# Section 3: Demo 1 — Step 1-5（4 min）

> 抓取→打分→Web 审阅

## GLM Plan

### P0 — 大字过渡
- "开始执行：从 14,600 篇到 196 篇"

### P1 — Step 1-2：DBLP 抓取 + 摘要富化 [asciinema 录像]
- 展示终端操作：
  - `python3 fetch_dblp.py --config configs/venues.yaml --output-dir data/db/`
  - 输出：103 个 CSV 文件
  - `python3 enrich_papers.py ...`
  - 输出：92% 摘要覆盖率
- 讲：纯脚本自动化，每步输出 CSV，格式固定
- 不需要停留太久，快速过

### P2 — Step 3：关键词打分 [asciinema 或截图]
- 展示 configs/topic-cpu-ai.yaml 的关键词配置
- 展示打分结果：scored.csv，按 score 排序
- 重点：score >= 11 的有 196 篇 → 从 14,600 筛到 196
- 这是结构化 I/O 的体现：配置（YAML）→ CSV in → CSV out

### P3 — 大字："14600 篇里你只审 196 篇"
- 数据冲击，停 3 秒

### P4 — Step 4：Web 审阅 [现场 Live Demo 45s]
- 现场启动 review_server.py
- 展示：2×2 网格、关键词金色高亮、键盘快捷键标记 keep/skip
- 操作演示：标记一篇 keep，标记一篇 skip
- 讲：AI 做苦力（抓取、打分），人做决策（keep/skip）
- 保底：截图 web-review.png

### P5 — 大字："人做决策，AI 做苦力"

### P6 — Step 5：PDF 同步（一句话带过）
- 从 Zotero 同步 PDF，不是重点，一句话带过
- 展示 pdfs/ 目录有 12 个 PDF

## 讲稿要点

- P1-P2 快速过，重点是展示"每步输入输出结构化"
- P3 的数据冲击要有力，不要表格，用大数字
- P4 是第一个 live demo，要有信心，操作简洁
- P5 是节奏控制，给观众消化时间
- P6 一句话带过，不要展开
