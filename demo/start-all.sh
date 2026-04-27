#!/bin/bash
# 一键启动所有 Demo 服务
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

find_free_port() {
    python3 - "$1" <<'PY'
import socket
import sys

port = int(sys.argv[1])
while True:
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        sock.bind(("127.0.0.1", port))
        print(port)
        break
    except OSError:
        port += 1
    finally:
        sock.close()
PY
}

REVIEW_PORT="$(find_free_port "${REVIEW_PORT:-8088}")"
CORPUS_PORT="$(find_free_port "${CORPUS_PORT:-5000}")"

echo "=== Starting all demo services ==="
echo ""

# 启动 Web 审阅服务（后台）
echo "[1/2] Starting review_server.py on :${REVIEW_PORT} ..."
REVIEW_PORT="$REVIEW_PORT" bash "$SCRIPT_DIR/start-review-server.sh" &
REVIEW_PID=$!
echo "  PID: $REVIEW_PID"

sleep 1
if ! kill -0 "$REVIEW_PID" 2>/dev/null; then
    echo "ERROR: review_server.py failed to start."
    wait "$REVIEW_PID" || true
    exit 1
fi

# 等待一下再启动第二个
sleep 1

# 启动 Corpus Reviewer（后台）
echo "[2/2] Starting corpus_reviewer.py on :${CORPUS_PORT} ..."
CORPUS_PORT="$CORPUS_PORT" bash "$SCRIPT_DIR/start-corpus-reviewer.sh" &
CORPUS_PID=$!
echo "  PID: $CORPUS_PID"

sleep 1
if ! kill -0 "$CORPUS_PID" 2>/dev/null; then
    echo "ERROR: corpus_reviewer.py failed to start."
    wait "$CORPUS_PID" || true
    kill "$REVIEW_PID" 2>/dev/null || true
    exit 1
fi

echo ""
echo "=== All services started ==="
echo "  Web Review:      http://localhost:${REVIEW_PORT}"
echo "  Corpus Reviewer: http://localhost:${CORPUS_PORT}"
echo ""
echo "Press Ctrl+C to stop all services"

cleanup() {
    echo ""
    echo "Stopping services..."
    kill $REVIEW_PID $CORPUS_PID 2>/dev/null
    wait 2>/dev/null
    echo "Done."
}
trap cleanup EXIT INT TERM

wait
