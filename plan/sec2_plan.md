# Section 2: Plan → Step Plan（3 min）

> 大 Plan 拆分、小 plan 结构化 I/O、偏差正常、Doc 最后生成

## GLM Plan

### P0 — 大字过渡
- "先有 Plan，再动手"

### P1 — 大 Plan：Survey Pipeline 的整体设计
- 展示 plan/README.md 的核心内容（简化版）
- 一句话：8 步流水线，从 DBLP 抓取到人工对照
- 重点不是每步的细节，而是"为什么拆成 8 步而不是 1 个大脚本"
- 答案：上下文有限 → 任务粒度必须小

### P2 — Step Plan：每步有结构化的输入输出
- 展示一个具体的 step plan 例子（比如 plan/step3-score-papers.md）
- 关键点：
  - 每个 step plan 定义了：输入格式、输出格式、脚本、配置
  - 输入输出都是结构化的（CSV/JSON），不是自由文本
  - 结构化 → 程序可验证 → 下一步可直接消费

### P3 — 偏差是正常的
- 展示 plan/ 和 doc/ 的对比
  - plan/step4-review.md 里写的是 `filter_papers.py`
  - 实际做出来的是 `review_server.py` + `review.html`（Web 审阅方案）
- 关键点：Plan 是方向，不是教条。执行过程中发现更好的方案 → 改 → Doc 记录实际做了什么
- doc/ 是执行后生成的，记录真实过程

### P4 — 大字总结
- "Plan 是方向，不是教条"
- 下面小字：结构化 I/O 是 Plan 落地的关键

## 讲稿要点

- P1 不要展开讲 8 步细节，后面 Demo 会走一遍
- P2 用一个具体 step plan 做例子，不要泛泛而谈
- P3 的偏差例子要有说服力 — plan 说 filter_papers.py，实际做成了 Web 审阅，体验更好
- 核心信息：Plan 指导方向，结构化 I/O 保证可执行，偏差正常，Doc 记录真实
