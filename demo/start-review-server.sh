#!/bin/bash
# 启动 Web 审阅 Demo（Step 4: review_server.py）
set -e

SURVEY_DIR="$(cd "$(dirname "$0")/../workspace/survey" && pwd)"
CSV="$SURVEY_DIR/data/topics/cpu-ai/scored-score-gte11.csv"
TOPIC="$SURVEY_DIR/configs/topic-cpu-ai.yaml"

if [ ! -f "$CSV" ]; then
    echo "ERROR: CSV not found: $CSV"
    exit 1
fi

echo "Starting review_server.py on http://localhost:8088"
echo "CSV: $CSV"
echo ""
cd "$SURVEY_DIR"
python3 review_server.py --csv "$CSV" --topic "$TOPIC" --port 8088
