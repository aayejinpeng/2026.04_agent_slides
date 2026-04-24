#!/bin/bash
# 一键启动所有 Demo 服务
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Starting all demo services ==="
echo ""

# 启动 Web 审阅服务（后台）
echo "[1/2] Starting review_server.py on :8088 ..."
bash "$SCRIPT_DIR/start-review-server.sh" &
REVIEW_PID=$!
echo "  PID: $REVIEW_PID"

# 等待一下再启动第二个
sleep 1

# 启动 Corpus Reviewer（后台）
echo "[2/2] Starting corpus_reviewer.py on :5000 ..."
bash "$SCRIPT_DIR/start-corpus-reviewer.sh" &
CORPUS_PID=$!
echo "  PID: $CORPUS_PID"

echo ""
echo "=== All services started ==="
echo "  Web Review:     http://localhost:8088"
echo "  Corpus Reviewer: http://localhost:5000"
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
