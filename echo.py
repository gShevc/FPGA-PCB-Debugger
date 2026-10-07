import socket

HOST, PORT = "192.168.1.10", 7

with socket.create_connection((HOST, PORT), timeout=2) as s:
    for msg in [b"hello", b"SET CH1 1.25", b"GET STATUS"]:
        s.sendall(msg)
        buf = b""
        while len(buf) < len(msg):  # TCP is a stream: reply may arrive in pieces
            chunk = s.recv(4096)
            if not chunk:
                raise ConnectionError("board closed connection")
            buf += chunk
        print(f"sent {msg!r} -> got {buf!r}")