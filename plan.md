# Agent 主题演讲 Plan v3 — reveal.js Demo-driven

> **风格**：Demo-driven + 大字口号 + 极简截图，不是科普讲座
> **框架**：reveal.js
> **目录**：`/root/opencute/slides/2026.04_agent_slides/`
> **作者**：叶锦鹏
> **时长**：≤ 30 分钟（含 Q&A）
> **听众**：研究生同学，有 AI 基础，不想听定义，想看效果

---

## 核心原则

1. **先爽再讲**：每个 section 先放 Demo/截图让人哇，再花 10 秒讲为什么
2. **Slides 是 Demo 的注脚**：~60% 全屏截图/终端、~20% 大字口号、~20% 极简对比
3. **不科普**：不讲 Agent 定义、不讲 MCP 架构、不讲 ReAct 论文
4. **用现场 Demo 带节奏**：每段 Demo 30-60 秒，跑完一个爽点切回 slides
5. **知识穿插在 Demo 里**：顺带一句，不单独开页

---

## 叙事弧线

```
痛点共鸣 → 爽点轰炸(3连Demo) → 大项目展示(Survey全流程) → 工具选型 → 行动呼吁
   2min       8min                    10min               4min       3min
```

**一句话总结**：先让你们看到 AI 写代码有多爽，然后告诉你们怎么爽起来。

---

## 时间分配

| Section | 时长 | 页数 | 类型 |
|---------|------|------|------|
| 0. 开场钩子 | 1 min | 3 | 大字 + 痛点共鸣 |
| 1. 爽点轰炸：三连 Demo | 8 min | 9 | Demo/Demo/截图交替 |
| 2. 大项目：Survey Pipeline 全流程 | 10 min | 8 | 截图 + Demo + 数据展示 |
| 3. 工具选型指南 | 4 min | 4 | 对比 + 大字口号 |
| 4. 行动呼吁 | 3 min | 3 | 截图 + 大字 |
| 5. 结尾 | 1 min | 1 | Takeaway |
| Q&A | 3 min | - | - |
| **合计** | **~30 min** | **~28 页** | |

---

## 逐页详细内容

### Section 0: 开场钩子（1 min，3 页）

**S0 — 大字：你还在手动做这些事吗？**
- 黑色背景，白色大字
- 下方 3 个痛点关键词渐次出现（动画）：
  - "调研 14000 篇论文"
  - "逐篇看摘要、手抄笔记"
  - "写完发现方向不对..."
- 停 3 秒，让大家共鸣

**S1 — 大字：今天给你们看点不一样的东西**
- 纯大字，制造期待感
- "接下来你看到的，都是我实际在用的"

**S2 — 自我介绍（极简）**
- 一句话：叶锦鹏，在用 Agent 做论文调研和芯片验证
- 不列头衔不列单位，保持随意感

---

### Section 1: 爽点轰炸（8 min，9 页）★ 开场高潮

> 核心策略：连续 3 个 Demo，每个 ~2 min，看完一个爽点立刻进入下一个

**S3 — 爽点 1：Claude Code 现场分析论文**
- 类型：**现场 Demo**
- 操作：`claude /analyze-paper-claude paper.json`
- 预期效果：30 秒内输出结构化 dossier（研究目的、贡献、实验数据、研究空白）
- 讲稿要点：看，一篇 20 页的论文，30 秒出结构化分析。你手动看要多久？
- 保底：提前录好终端录屏，翻车时切换

**S4 — 大字：30 秒 vs 半天**
- 左边："手动：半天"  右边："Agent：30 秒"
- 极简对比，一图胜千言

**S5 — 爽点 2：Codex 自动审查**
- 类型：**现场 Demo 或截图**
- 操作：展示 Codex 审查 Claude 生成结果的终端输出
- 重点展示：Codex 找出了 Claude 的一个错误/遗漏，并给出修正版本
- 讲稿要点：一个模型不够？两个模型互相检查。Claude 生成，Codex 审查，幻觉率大幅降低
- 保底：截图页

**S6 — 大字：两个模型互相检查 > 自己检查自己**
- 一句话总结双重验证的价值

**S7 — 爽点 3：Cherry Studio 零门槛**
- 类型：**现场 Demo 或截图**
- 操作：
  1. 打开 Cherry Studio，展示多模型切换
  2. 配置 API Key，开始对话
  3. 展示知识库 RAG——丢进去一篇论文，直接问答
- 讲稿要点：不需要命令行，不需要写代码。图形界面，配置一个 Key，今天就能用
- 保底：截图页

**S8 — 大字：写代码用 CC，跑任务用 CX，日常用 Cherry**
- 金句页，全场记住这一句

**S9 — 节奏缓冲：那把这些东西串起来能做什么？**
- 承上启下的一句话
- 引出下一 Section：我们的 Survey Pipeline

**S10 — Pipeline 全景图（唯一一张架构图）**
- 类型：全屏图
- 9 步流水线数据流图（简洁版，不是教学图）
- 三个色块标阶段：自动采集 → 人工把关 → Agent 主战场
- 只停留 15 秒："看个大概就行，下面我们走一遍"
- 图片方案：reveal.js 背景图 或 SVG 内联

**S11 — 数据冲击：14600 → 196 → 12**
- 类型：大字 + 数字动画
- 14600 篇论文 → 196 篇高相关 → 12 篇核心 → 结构化 dossier
- 1-2 周 → 1-2 天
- 大字："这不是概念，这是跑出来的数据"

---

### Section 2: Survey Pipeline 全流程（10 min，8 页）★ 核心展示

> 核心策略：按 Pipeline 顺序走，每个环节展示实际界面

**S12 — 阶段 A：Web 审阅界面 Demo**
- 类型：**现场 Demo**
- 操作：打开 Web 审阅服务，展示 2x2 论文网格，关键词高亮，键盘标记 keep/skip
- 讲稿要点：14600 篇不可能一篇篇看。自动打分排序，你只需要审阅高分的那 196 篇。2x2 网格同时看 4 篇，关键词金色高亮，键盘一键标记
- 保底：截图页

**S13 — 大字：人做决策，AI 做苦力**
- 一句话总结阶段 A + B 的理念

**S14 — Agent 编排：Producer-Consumer 演示**
- 类型：**截图/终端录屏**
- 展示 `paper_review_pipeline.py` 的实际运行输出
- 重点：终端里同时看到 Claude 分析和 Codex 审查在并行推进
- 讲稿要点：不是一篇篇串行跑。Claude 分析完一篇，立刻送进队列，Codex 同时开始审查。Pipeline 流水线，最大化利用率
- 保底：终端录屏截图

**S15 — Corpus Reviewer Demo**
- 类型：**现场 Demo**
- 操作：打开 Corpus Reviewer，左右分栏展示
  - 左：结构化 JSON（GPT Review / GLM Extraction / GPT Revised / Human Edit 四视图切换）
  - 右：原始 PDF
- 讲稿要点：左边是 AI 分析结果，右边是论文原文。四个视图切换——GPT 的审查意见、Claude 的原始提取、GPT 的修正版、你自己的编辑。对照看，有问题的立刻改
- 保底：截图页

**S16 — 大字：不盲目信任 AI，但也不手动做苦力**
- 人工把关 + AI 苦力 的平衡

**S17 — 输出展示：开题报告即用素材**
- 类型：dossier JSON 关键字段展示（代码块风格，reveal.js 高亮）
- 展示 JSON 结构，每个字段用注释标注对应开题报告的哪个章节
- `research_purpose` → 研究目的
- `contributions[]` → 国内外研究现状
- `gap_identified[]` → 研究空白
- `proposal_evidence` → 可行性论据
- 讲稿要点：看这个 JSON——每个字段直接对应开题报告的章节。这不是 demo，这是我们实际用的

**S18 — 成果数据**
- 类型：数据展示
- 14,600 篇 / 27 会议 + 7 期刊 / 92% 摘要覆盖
- 196 篇筛选 / 12 篇 keep / 1-2 周 → 1-2 天
- 用 big number 展示，不要表格

**S19 — 大字：Agent 不是替代你，是放大你**
- 核心观点总结
- 停 2 秒，让观众消化

---

### Section 3: 工具选型指南（4 min，4 页）

**S20 — 全景对比（唯一一张表格）**
- 类型：极简表格
- 项目 / 类型 / 开源 / 一句话特色
- 只列 5 个重点：Claude Code、Codex CLI、Cherry Studio、Cursor、GitHub Copilot
- 不列 Windsurf、Devin、Aider 等次要项目
- 每行一行文字，不要密密麻麻

**S21 — 什么时候用什么**
- 类型：场景 → 工具的决策表
- 7 个场景，每个一行：
  - 写代码/改 Bug → CC | 批量审查 → CX | 日常对话 → Cherry
  - 论文阅读 → Cherry | 复杂 Agent → CC | 一键任务 → CX | 用 API → Cherry
- 配合截图小缩略图

**S22 — 我们的实际分工**
- 类型：三栏截图
- Cherry Studio：日常讨论、翻译 | Claude Code：写代码、分析论文 | Codex：批量审查
- 配实际使用的截图（不是产品官网图）

**S23 — 大字（重申）：写代码用 CC，跑任务用 CX，日常用 Cherry**
- 和 S8 呼应，强化记忆

---

### Section 4: 行动呼吁（3 min，3 页）

**S24 — 怎么开始用**
- 类型：截图 + 步骤
- 3 步：
  1. 下载 Cherry Studio（或 Claude Code / Codex）
  2. 申请我们的 API Key
  3. 配置 → 开始用
- 配截图展示配置过程（Cherry Studio 设置页）

**S25 — 我们的 API 服务**
- 类型：简洁信息页
- 一句话：统一 API 接口，一个 Key 多模型
- 兼容 OpenAI SDK
- 申请方式（二维码或链接）
- 不展开讲技术细节

**S26 — 大字：让每个人都能用上最好的 AI**
- AI 平权愿景
- 停 2 秒

---

### Section 5: 结尾（1 min，1 页）

**S27 — Takeaway**
- 4 个大字要点（逐个出现）：
  1. AI 写代码已经很好用了——不是未来，是现在
  2. 工具已经成熟——选对工具比选最强模型重要
  3. 多模型协作是王道——CC + CX + Cherry
  4. Agent 放大你的能力——不是替代你
- 谢谢 / Q&A

---

## Slides 类型分布

| 类型 | 数量 | 占比 | 说明 |
|------|------|------|------|
| 现场 Demo | 3-4 段 | ~40% | Claude Code、Codex、Cherry Studio、Corpus Reviewer |
| 全屏截图/终端 | 5-6 页 | ~25% | Pipeline 运行输出、Web 审阅、工具界面 |
| 大字口号 | 10-12 页 | ~30% | 金句、过渡、Takeaway |
| 数据/代码展示 | 2-3 页 | ~10% | Pipeline 数据、dossier JSON |
| 对比表格 | 2 页 | ~5% | 全景对比、选型指南 |

---

## Demo 准备清单

| Demo | 准备内容 | 保底方案 | 时长 |
|------|---------|---------|------|
| Claude Code 分析论文 | 准备好 paper.json，确保命令可跑 | 终端录屏 | 30-60s |
| Codex 审查 | 准备好已有分析结果，展示审查输出 | 截图页 | 30-45s |
| Cherry Studio | 配好 API Key，打开界面展示 | 截图页 | 30-45s |
| Web 审阅 | 启动 review\_server.py，加载 CSV | 截图页 | 30-45s |
| Corpus Reviewer | 启动 corpus\_reviewer.py，加载语料 | 截图页 | 30-45s |

> **每个 Demo 都必须准备保底截图**。现场 Demo 有风险，翻车时 1 秒切换截图页。

---

## 文件组织

```
slides/2026.04_agent_slides/
├── plan.md              ← 本文件
├── script.md            ← 讲稿（Speaker Notes）
├── index.html           ← reveal.js 主文件
├── package.json         ← 依赖管理
├── slides/              ← reveal.js slides 目录
│   ├── section0_hook.md     ← S0-S2
│   ├── section1_demos.md    ← S3-S11
│   ├── section2_survey.md   ← S12-S19
│   ├── section3_guide.md    ← S20-S23
│   ├── section4_action.md   ← S24-S26
│   └── section5_end.md      ← S27
├── assets/              ← 图片资源
│   ├── screenshots/
│   │   ├── claude-analyze.png
│   │   ├── codex-review.png
│   │   ├── cherry-studio.png
│   │   ├── web-review.png
│   │   ├── corpus-reviewer.png
│   │   ├── pipeline-run.png
│   │   └── cherry-setup.png
│   └── recordings/          ← 终端录屏（保底用）
│       ├── claude-analyze.mp4
│       ├── codex-review.mp4
│       └── ...
├── css/
│   └── custom.css       ← 自定义样式（大字、配色、截图全屏）
└── plugin/
    └── (reveal.js 内置插件)
```

## reveal.js 技术方案

- 使用 reveal.js Markdown mode（slides 写 Markdown，不是 HTML）
- `npm init` 管理依赖
- 自定义主题：暗色背景（黑/深灰），白色大字，强调色（ciae 蓝）
- 代码块用 reveal.js 内置 highlight.js
- 图片用 `![](url){.r-stretch}` 占满全屏
- Demo 页用 `<video>` 嵌入录屏，或 `<iframe>` 嵌入在线 Demo
- Speaker Notes 内嵌在 Markdown 中

---

## 执行计划

| 步骤 | 内容 | 产出 |
|------|------|------|
| 1 | ✅ Plan v3 定稿（当前） | 本文件 |
| 2 | 初始化 reveal.js 项目 | package.json, index.html, 主题 |
| 3 | 截取 Demo 保底截图 | assets/screenshots/ |
| 4 | 撰写 slides (Markdown) | slides/*.md |
| 5 | 撰写讲稿 (script.md) | script.md（含 Speaker Notes） |
| 6 | 本地预览 & 调试 | `npx serve` 打开浏览器看效果 |
| 7 | 用户 Review | 修改反馈 |

---

## 待确认

1. Demo 的具体论文选哪篇？（建议选一篇大家可能知道方向的）
2. API 服务的具体信息（地址、申请方式）
3. 终端录屏是自己录还是用截图？
