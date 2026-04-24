#!/bin/bash
# 启动 Corpus Reviewer Demo（Step 8: corpus_reviewer.py）
set -e

SURVEY_DIR="$(cd "$(dirname "$0")/../workspace/survey" && pwd)"

echo "Starting corpus_reviewer.py on http://localhost:5000"
echo "Topic: cpu-ai"
echo ""
cd "$SURVEY_DIR"
python3 corpus_reviewer.py --topic cpu-ai --port 5000
