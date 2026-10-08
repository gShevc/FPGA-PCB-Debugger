import { useEffect, useRef, useState } from "react";

const BRIDGE_URL = "ws://localhost:8080";
const QUICK_COMMANDS = ["PING", "LED?", "BTN?", "HELP"];

export default function App() {
  const [host, setHost] = useState("192.168.1.10");
  const [port, setPort] = useState("7");
  const [state, setState] = useState("disconnected"); // disconnected | connecting | connected
  const [input, setInput] = useState("");
  const [log, setLog] = useState([]);
  const [leds, setLeds] = useState(null); // 0..15 once known
  const [btns, setBtns] = useState(null);
  const wsRef = useRef(null);
  const rxBufRef = useRef("");
  const logEndRef = useRef(null);

  const addLog = (kind, text) =>
    setLog((l) => [...l, { id: crypto.randomUUID(), kind, text, time: new Date() }]);

  useEffect(() => logEndRef.current?.scrollIntoView({ behavior: "smooth" }), [log]);
  useEffect(() => () => wsRef.current?.close(), []);

  // The board replies one line per command; pick out state we can show in the UI.
  function handleLine(line) {
    addLog(line.startsWith("ERR") ? "err" : "rx", line);
    let m;
    if ((m = line.match(/^(?:OK )?LED (\d+)$/))) setLeds(Number(m[1]));
    else if ((m = line.match(/^BTN (\d+)$/))) setBtns(Number(m[1]));
  }

  function connect() {
    setState("connecting");
    rxBufRef.current = "";
    const ws = new WebSocket(`${BRIDGE_URL}/?host=${encodeURIComponent(host)}&port=${encodeURIComponent(port)}`);
    wsRef.current = ws;

    ws.onmessage = (e) => {
      const msg = JSON.parse(e.data);
      if (msg.type === "data") {
        // TCP is a stream: a reply can arrive split or merged, so reassemble lines.
        const lines = (rxBufRef.current + msg.data).split("\n");
        rxBufRef.current = lines.pop();
        lines.forEach(handleLine);
      } else if (msg.type === "error") addLog("err", msg.message);
      else if (msg.type === "status" && msg.state === "connected") {
        setState("connected");
        addLog("info", `connected to ${msg.host}:${msg.port}`);
        ws.send("LED?\n");
        ws.send("BTN?\n");
      }
    };
    ws.onerror = () => addLog("err", `can't reach bridge at ${BRIDGE_URL} — is \`npm run bridge\` running?`);
    ws.onclose = () => {
      if (wsRef.current === ws) wsRef.current = null;
      setState("disconnected");
      setLeds(null);
      setBtns(null);
      addLog("info", "disconnected");
    };
  }

  function disconnect() {
    wsRef.current?.close();
  }

  function sendCommand(cmd) {
    if (!cmd || state !== "connected") return;
    wsRef.current.send(cmd + "\n");
    addLog("tx", cmd);
  }

  function onSubmit(e) {
    e.preventDefault();
    sendCommand(input.trim());
    setInput("");
  }

  const connected = state === "connected";

  return (
    <main>
      <header>
        <div>
          <p className="eyebrow">Zynq-7020 / PYNQ-Z2</p>
          <h1>Board Console</h1>
        </div>
        <span className={`status ${state}`}>
          <span className="dot" />
          {state}
        </span>
      </header>

      <section className="panel">
        <h2 className="label"><span>01</span> Link</h2>
        <div className="conn">
          <label>
            Board IP
            <input value={host} onChange={(e) => setHost(e.target.value)} disabled={state !== "disconnected"} />
          </label>
          <label className="port">
            Port
            <input value={port} onChange={(e) => setPort(e.target.value)} disabled={state !== "disconnected"} />
          </label>
          {state === "disconnected" ? (
            <button className="primary" onClick={connect}>Connect</button>
          ) : (
            <button onClick={disconnect}>Disconnect</button>
          )}
        </div>
      </section>

      <section className="panel io">
        <div className="group">
          <h2 className="label"><span>02</span> LEDs</h2>
          <div className="row">
            {[3, 2, 1, 0].map((bit) => {
              const on = leds !== null && (leds >> bit) & 1;
              return (
                <button
                  key={bit}
                  className={`led ${on ? "on" : ""}`}
                  disabled={!connected || leds === null}
                  onClick={() => sendCommand(`LED ${leds ^ (1 << bit)}`)}
                  title={`Toggle LD${bit}`}
                >
                  LD{bit}
                </button>
              );
            })}
          </div>
        </div>
        <div className="group">
          <h2 className="label"><span>03</span> Buttons</h2>
          <div className="row">
            {[3, 2, 1, 0].map((bit) => (
              <span key={bit} className={`btn-ind ${btns !== null && (btns >> bit) & 1 ? "on" : ""}`}>
                BTN{bit}
              </span>
            ))}
            <button className="ghost" disabled={!connected} onClick={() => sendCommand("BTN?")}>
              Read
            </button>
          </div>
        </div>
        <div className="group">
          <h2 className="label"><span>04</span> Commands</h2>
          <div className="row">
            {QUICK_COMMANDS.map((cmd) => (
              <button key={cmd} className="ghost" disabled={!connected} onClick={() => sendCommand(cmd)}>
                {cmd}
              </button>
            ))}
          </div>
        </div>
      </section>

      <section className="panel console">
        <div className="console-head">
          <h2 className="label"><span>05</span> Console</h2>
          <button type="button" className="link" onClick={() => setLog([])}>Clear</button>
        </div>
        <div className="log">
          {log.length === 0 && <p className="empty">Connect, then send a command — try HELP.</p>}
          {log.map((entry) => (
            <div key={entry.id} className={`line ${entry.kind}`}>
              <span className="time">{entry.time.toLocaleTimeString()}</span>
              <span className="tag">{{ tx: "→", rx: "←", info: "·", err: "!" }[entry.kind]}</span>
              <span className="text">{entry.text}</span>
            </div>
          ))}
          <div ref={logEndRef} />
        </div>
        <form className="send" onSubmit={onSubmit}>
          <span className="prompt">&gt;</span>
          <input
            placeholder={connected ? "Command, e.g. LED 5" : "Not connected"}
            value={input}
            onChange={(e) => setInput(e.target.value)}
            disabled={!connected}
          />
          <button type="submit" className="primary" disabled={!connected || !input.trim()}>Send</button>
        </form>
      </section>
    </main>
  );
}
