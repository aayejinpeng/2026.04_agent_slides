# Section 5: Meta demo（3 min）

> 这套 slides 本身就是用同样的方法做的

## GLM Plan

### P0 — 大字
- "你们看到的这套 slides，也是用同样的方法做的"

### P1 — Slides 的 Workflow
- 展示 slides 项目的目录结构：
  ```
  2026.04_agent_slides/
  ├── plan.md          ← 大 Plan
  ├── plan/            ← Step Plan（每 sec 一个）
  ├── slides/          ← 执行产物（6 个 section markdown）
  ├── css/             ← 样式
  ├── index.html       ← 入口
  └── Makefile         ← 工具链
  ```
- 和 survey 项目一样的结构：plan/ → 执行 → 产物
- 偏差也存在：plan 改了好几版，doc（plan 文件本身）记录了迭代过程

### P2 — reveal.js：为什么用这个
- 一句话：Demo 驱动的分享会需要全屏截图、代码高亮、嵌入 Web Demo
- reveal.js 原生支持 Markdown 模式，每 section 一个文件 = 小步解耦
- `make serve` 一键预览 = 每步可验证

### P3 — 工具选择（一句话带过）
- 写代码 / 做 slides → Claude Code（交互式）
- 跑批量任务 → Codex CLI（沙箱化）
- 不展开，就是一句话的 takeaway

## 讲稿要点

- P0 要有冲击力，让观众意识到"方法论是通用的"
- P1 的对比是关键：slides 项目和 survey 项目结构一样
- P2 不要变成 reveal.js 推销，点到为止
- P3 一句话带过，不展开
