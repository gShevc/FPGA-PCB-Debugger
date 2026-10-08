// WebSocket <-> TCP bridge.
// Browsers can't open raw TCP sockets, and the lwIP echo server only speaks TCP,
// so each WebSocket client gets its own TCP connection to the board.
//
//   browser --ws://localhost:8080/?host=192.168.1.10&port=7--> bridge --tcp--> PYNQ-Z2
//
// Messages to the browser are JSON: {type: "status" | "data" | "error", ...}.
// Messages from the browser are forwarded to the board as raw bytes.
import net from "node:net";
import { WebSocketServer } from "ws";

const WS_PORT = Number(process.env.WS_PORT ?? 8080);
const DEFAULT_HOST = process.env.BOARD_HOST ?? "192.168.1.10";
const DEFAULT_PORT = Number(process.env.BOARD_PORT ?? 7);

// Bind to localhost only so the bridge isn't an open TCP proxy on your network.
const wss = new WebSocketServer({ host: "127.0.0.1", port: WS_PORT });

wss.on("connection", (ws, req) => {
  const params = new URL(req.url, "http://localhost").searchParams;
  const host = params.get("host") || DEFAULT_HOST;
  const port = Number(params.get("port")) || DEFAULT_PORT;
  const send = (msg) => ws.readyState === ws.OPEN && ws.send(JSON.stringify(msg));

  console.log(`[ws] client connected -> ${host}:${port}`);
  send({ type: "status", state: "connecting", host, port });

  const tcp = net.createConnection({ host, port });
  tcp.setNoDelay(true);
  tcp.setTimeout(5000, () => tcp.destroy(new Error(`timed out connecting to ${host}:${port}`)));

  tcp.on("connect", () => {
    tcp.setTimeout(0);
    console.log(`[tcp] connected to ${host}:${port}`);
    send({ type: "status", state: "connected", host, port });
  });
  tcp.on("data", (buf) => send({ type: "data", data: buf.toString("utf8") }));
  tcp.on("error", (err) => {
    console.log(`[tcp] error: ${err.message}`);
    send({ type: "error", message: err.message });
  });
  tcp.on("close", () => {
    console.log(`[tcp] closed ${host}:${port}`);
    send({ type: "status", state: "closed" });
    ws.close();
  });

  ws.on("message", (data) => {
    if (tcp.writable) tcp.write(data);
  });
  ws.on("close", () => tcp.destroy());
});

console.log(`bridge listening on ws://127.0.0.1:${WS_PORT} (default board ${DEFAULT_HOST}:${DEFAULT_PORT})`);
