# Section 4: Demo 2 — Step 6-8（6 min）

> Agent 分析、双模型、Corpus Reviewer live demo

## GLM Plan

### P0 — 大字过渡
- "Agent 主战场"

### P1 — Step 6：PDF 解析 → Draft JSON
- 展示 extract_papers.py 的输入输出：
  - 输入：PDF + CSV 元数据
  - 输出：draft JSON（正文提取 + 噪声清理 + 元数据合并）
- 展示一个 draft JSON 的关键字段
- 讲：这是给 Agent 的结构化输入，不是直接扔 PDF

### P2 — Step 7：双模型对抗生成
- 架构图：Producer（Claude Code）→ Consumer（GPT）
- Producer：读取 draft JSON → 分析论文全文 → 输出结构化 dossier
- Consumer：读取 dossier → 逐字段审查 → 输出 review + revised
- Pipeline 并行：Claude 分析完一篇 → 立刻送 GPT 审查
- 讲：为什么用两个模型？降低幻觉风险，专业性互补

### P3 — Step 7 的 Harness 设计
- 结构化数据约束：
  - 输入 draft JSON → 固定 schema
  - 输出 dossier JSON → 固定 schema
  - 审查 review JSON → 固定检查项
  - 确定性预检：preflight_review.py
- 容错机制：状态持久化、断点续传、失败分类
- 这就是 Harness 的体现：结构化约束 + 可验证 + 容错

### P4 — Step 8：Corpus Reviewer [现场 Live Demo 60s]
- 现场启动 corpus_reviewer.py
- 展示：左边 AI 分析结果，右边原始 PDF
- 操作：四视图切换（GPT Review → Claude Extraction → GPT Revised → Human Edit）
- 演示人工编辑：修改一个字段，Ctrl+S 保存
- 讲：不盲目信任 AI，但也不手动做苦力
- 保底：截图 corpus-reviewer.png

### P5 — 输出示例：开题报告直接能用
- 展示 DECA 论文的实际 dossier JSON（关键字段）
- 每个 field 对应开题报告的哪个章节
- research_purpose → 研究目的
- contributions → 主要贡献
- gap_identified → 研究空白

### P7 — 大字："不盲目信任 AI，但也不手动做苦力"

## 讲稿要点

- P1 是过渡，不需要太多时间
- P2 是核心概念，要讲清楚为什么双模型
- P3 不要太细，点到为止（结构化约束 + 容错）
- P4 快速过，不需要停留
- P5 是全场最关键的 demo，要流畅自信
- P6 用真实数据（DECA），不要用示意
- P7 收尾节奏控制
