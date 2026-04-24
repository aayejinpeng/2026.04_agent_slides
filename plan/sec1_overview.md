# Section 1: 目录结构总览（2 min）

> 用 survey 目录当 roadmap

## GLM Plan

### P0 — 大字过渡
- "先看目录，再看代码"
- 制造悬念：一个好项目的目录结构本身就在讲故事

### P1 — 目录结构全景
- 展示 survey/ 的目录树（精简版）：
  ```
  survey/
  ├── configs/        ← 输入配置
  ├── data/           ← 结构化中间数据
  ├── pdfs/           ← 原始素材
  ├── doc/            ← 执行后生成的文档
  ├── plan/           ← 大 Plan + Step Plan
  ├── skill/          ← Agent 的 Harness（skill 定义）
  └── *.py            ← 每步一个脚本
  ```
- 关键点：目录结构对应 workflow 的每个阶段
- 不展开讲，只是给观众一个地图

### P2 — 目录 → Workflow 映射
- 用箭头展示：
  ```
  plan/     → 规划阶段（大 Plan → Step Plan）
  configs/  → 配置阶段（定义目标和约束）
  *.py      → 执行阶段（每步一个脚本）
  data/     → 结构化 I/O（CSV → CSV → JSON）
  doc/      → 文档阶段（执行后生成）
  ```
- 一句话：接下来我们就按这个顺序走

## 讲稿要点

- 这部分是"给观众地图"，不求记住细节，只需要有个大致印象
- 目录结构要精简，不要展示所有文件
- P2 的映射关系是核心，后面每个 section 都会回到这个映射
