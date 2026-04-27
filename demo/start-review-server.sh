#!/bin/bash
# 启动 Web 审阅 Demo（Step 4: review_server.py）
set -e

SURVEY_DIR="$(cd "$(dirname "$0")/../workspace/survey" && pwd)"
TOPIC="$SURVEY_DIR/configs/topic-cpu-ai.yaml"
TOPIC_DIR="$SURVEY_DIR/data/topics/cpu-ai"
REVIEW_PORT="${REVIEW_PORT:-8088}"

if [ -f "$TOPIC_DIR/scored-score-gte11.csv" ]; then
    CSV="$TOPIC_DIR/scored-score-gte11.csv"
elif [ -f "$TOPIC_DIR/top50.csv" ]; then
    CSV="$TOPIC_DIR/top50.csv"
elif [ -f "$TOPIC_DIR/scored.csv" ]; then
    CSV="$TOPIC_DIR/scored.csv"
else
    CSV=""
fi

if [ -z "$CSV" ]; then
    echo "ERROR: No review CSV found in $TOPIC_DIR"
    echo "Tried: scored-score-gte11.csv, top50.csv, scored.csv"
    exit 1
fi

echo "Starting review_server.py on http://localhost:${REVIEW_PORT}"
echo "CSV: $CSV"
echo ""
cd "$SURVEY_DIR"
python3 review_server.py --csv "$CSV" --topic "$TOPIC" --port "$REVIEW_PORT"
