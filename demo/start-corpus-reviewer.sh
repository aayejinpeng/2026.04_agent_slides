#!/bin/bash
# 启动 Corpus Reviewer Demo（Step 8: corpus_reviewer.py）
set -e

SURVEY_DIR="$(cd "$(dirname "$0")/../workspace/survey" && pwd)"
CORPUS_PORT="${CORPUS_PORT:-5000}"

echo "Starting corpus_reviewer.py on http://localhost:${CORPUS_PORT}"
echo "Topic: cpu-ai"
echo ""
cd "$SURVEY_DIR"
python3 corpus_reviewer.py --topic cpu-ai --port "$CORPUS_PORT"
