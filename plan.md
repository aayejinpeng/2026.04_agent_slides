# Agent 主题演讲 Plan v3 — reveal.js Demo-driven（细化执行版）

> **风格**：Demo-driven + 大字口号 + 极简截图，分享会而非讲座
> **框架**：reveal.js
> **目录**：`/root/opencute/slides/2026.04_agent_slides/`
> **作者**：叶锦鹏
> **时长**：≤ 30 分钟（含 Q&A）
> **听众**：研究生同学，有 AI 基础
> **Demo 论文**：MICRO 2025 — DECA（近核 LLM 解压加速器），有完整 GLM/GPT 分析 + PDF

---

## 核心原则

1. **先爽再讲**：每个 section 先放 Demo/截图让人哇，再花 10 秒讲为什么
2. **Slides 是 Demo 的注脚**：~60% 全屏截图/终端、~20% 大字口号、~20% 极简对比
3. **不科普**：不讲 Agent 定义、不讲 MCP 架构图、不讲 ReAct 论文
4. **用现场 Demo 带节奏**：每段 Demo 30-60 秒，跑完一个爽点切回 slides
5. **知识穿插在 Demo 里**：顺带一句，不单独开页

---

## 叙事弧线

```
痛点共鸣 → 三连爽点轰炸 → Survey 全流程(DECA走一遍) → 工具选型 → 行动呼吁
   1min      8min              10min                   4min       3min
```

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
- 下方 3 个痛点渐次出现（动画）：调研近10年来与自己topic相关的论文 / 把论文逐篇喂给豆包/ChatGPT网页端 / 想自动化但不知道怎么搞
- 停 3 秒共鸣

**S1 — 大字：今天给你们看点不一样的东西**
- 纯大字，制造期待感

**S2 — 自我介绍（极简）**
- 一句话：用 Agent 做论文调研
- 不列头衔不列单位

---

### Section 1: 爽点轰炸（8 min，9 页）

**S3 — 爽点 1：Claude Code 分析论文** [现场 Demo 60s]
- 核心展示：Claude Code 的 plan → read → edit 工作流，以分析论文为例
- 操作：`claude /analyze-paper-claude DECA-*.json`
  1. **Plan**：Claude Code 理解任务（分析论文 JSON，输出结构化 dossier）
  2. **Read**：读取论文的 abstract + body\_text（几万字）
  3. **Edit**：输出结构化 JSON（研究目的、贡献、实验数据、研究空白）
- 预期：30s 输出完整 dossier
- 讲：不是 ChatGPT 那种"你问一句我答一句"。你定义目标，它执行，你审核结果
- 保底：截图 `claude-analyze.png`
- 切回 slides →

**S4 — 大字：AI 不只回答问题，AI 能自己干活**

**S5 — 爽点 2：Codex 自动审查** [现场 Demo 或截图 45s]
- 操作：展示 Codex 审查 DECA 的 Claude 分析结果
- 重点：Codex 找出一个错误/遗漏，给出修正版本
- 讲：一个模型不够？两个模型互相检查
- 保底：截图 `codex-review.png`
- 切回 slides →

**S6 — 大字：两个模型互相检查 > 自己检查自己**

**S7 — 爽点 3：Cherry Studio 零门槛** [现场 Demo 或截图 45s]
- 操作：打开 Cherry Studio → 多模型切换 → 配置 API Key → 扔一篇论文知识库问答
- 讲：不需要命令行，图形界面，配置一个 Key，今天就能用
- 保底：截图 `cherry-studio.png`
- 切回 slides →

**S8 — 大字：写代码用 CC，跑任务用 CX，日常用 Cherry**

**S9 — 过渡：那把这些东西串起来能做什么？**
- 一句话引出 Survey Pipeline

**S10 — Pipeline 全景图** [唯一架构图]
- 全屏简洁流水线图，三色块：自动采集 → 人工把关 → Agent 主战场
- 只停留 15 秒："看个大概就行，下面走一遍"

**S11 — 数据冲击：14600 → 196 → 12**
- 大字 + big number 展示

---

### Section 2: Survey Pipeline 全流程（10 min，8 页）

**S12 — Web 审阅 Demo** [现场 Demo 45s]
- 操作：打开 review\_server.py，展示 2x2 论文网格，关键词高亮，键盘标记
- 讲：14600 篇自动打分排序，你只审 196 篇
- 保底：截图 `web-review.png`

**S13 — 大字：人做决策，AI 做苦力**

**S14 — Agent 编排 Producer-Consumer** [终端录屏/截图 45s]
- 展示 pipeline 运行时 Claude 和 Codex 并行推进的终端输出
- 讲：Pipeline 流水线，最大化利用率
- 保底：截图 `pipeline-run.png`

**S15 — Corpus Reviewer Demo** [现场 Demo 45s]
- 操作：打开 corpus\_reviewer.py，左右分栏
- 展示四视图切换：GPT Review → GLM → GPT Revised → Human Edit
- 讲：左边 AI 分析，右边论文原文，对照看
- 保底：截图 `corpus-reviewer.png`

**S16 — 大字：不盲目信任 AI，但也不手动做苦力**

**S17 — 输出：开题报告即用素材**
- dossier JSON 关键字段（代码块风格，reveal.js 高亮）
- 每个字段注释对应开题报告哪个章节

**S18 — 成果数据**
- Big number：14600 / 27+7 / 92% / 196 / 12 / 5-7x

**S19 — 大字：Agent 不是替代你，是放大你**

---

### Section 3: 工具选型（4 min，4 页）

**S20 — 全景对比** [唯一表格]
- 5 个项目：CC / CX / Cherry Studio / Cursor / Copilot
- 极简，每行一句话特色

**S21 — 什么时候用什么** [决策表]
- 7 个场景 → 推荐工具

**S22 — 我们的实际分工** [三栏截图]
- Cherry：翻译对话 | CC：代码分析 | CX：批量审查

**S23 — 大字（重申）：写代码用 CC，跑任务用 CX，日常用 Cherry**

---

### Section 4: 行动呼吁（3 min，3 页）

**S24 — 怎么开始用** [截图 + 3 步]
- 下载 → 申请 Key → 配置开始用

**S25 — API 服务** [极简信息]
- 统一接口，一个 Key 多模型，兼容 OpenAI SDK
- 想用的同学联系**王重熙**或**李文青**申请 API Key

**S26 — 大字：让每个人都能用上最好的 AI**

---

### Section 5: 结尾（1 min，1 页）

**S27 — Takeaway**
- 4 个大字要点逐个出现：
  1. AI 写代码已经很好用了——不是未来，是现在
  2. 选对工具比选最强模型重要
  3. 多模型协作是王道
  4. Agent 放大你的能力
- 谢谢 / Q&A

---

## Demo 素材清单（DECA 论文）

| 资源 | 路径 | 状态 |
|------|------|------|
| 论文 PDF | `workspace/survey/pdfs/cpu-ai/DECA-*.pdf` | ✅ 已有 |
| Draft JSON | `workspace/survey/data/topics/cpu-ai/corpus/draft/DECA-*.json` | ✅ 已有 |
| GLM 分析 | `workspace/survey/data/topics/cpu-ai/corpus/llm/glm5.1/DECA-*.json` | ✅ 已有 |
| GPT 审查 | `workspace/survey/data/topics/cpu-ai/corpus/llm/gpt5.4/DECA-*.review.json` | ✅ 已有 |
| GPT 修正 | `workspace/survey/data/topics/cpu-ai/corpus/llm/gpt5.4/DECA-*.revised.json` | ✅ 已有 |
| 打分 CSV | `workspace/survey/data/topics/cpu-ai/scored-score-gte11.csv` | ✅ 已有 |

> DECA 全链路数据齐全，可用同一个论文展示完整流程。

---

## 分步执行计划

### Step 1: 初始化 reveal.js 项目

```
1.1 cd /root/opencute/slides/2026.04_agent_slides
1.2 npm init -y
1.3 npm install reveal.js
1.4 创建 index.html（引用 reveal.js）
1.5 创建 css/custom.css（暗色主题、ciae 蓝强调色、大字样式）
1.6 配置 slides 目录结构和 Markdown mode
```

### Step 2: 准备截图素材

```
2.1 创建 assets/screenshots/ 目录
2.2 DECA 相关截图（从已有数据生成）：
    - claude-analyze.png：GLM 分析结果 JSON 示意（或终端录屏）
    - codex-review.png：GPT review JSON + revised JSON 示意
    - dossier-output.png：dossier 关键字段展示
2.3 Survey 工具截图（需启动服务后截取）：
    - web-review.png：Web 审阅界面
    - corpus-reviewer.png：Corpus Reviewer 界面
    - pipeline-run.png：pipeline 运行终端输出
2.4 工具截图（需安装后截取）：
    - cherry-studio.png：Cherry Studio 界面
    - cherry-setup.png：API Key 配置页
2.5 Pipeline 架构图（SVG/TikZ 或纯 CSS/HTML 绘制）
```

> 注：2.3 需要启动 survey 服务后截图，2.4 需要用户准备。2.2 可从已有 JSON 文件中提取内容制作。

### Step 3: 撰写 reveal.js slides（Markdown）

```
3.1 slides/section0_hook.md — S0-S2 开场钩子
3.2 slides/section1_demos.md — S3-S11 三连爽点轰炸
3.3 slides/section2_survey.md — S12-S19 Survey 全流程
3.4 slides/section3_guide.md — S20-S23 工具选型
3.5 slides/section4_action.md — S24-S26 行动呼吁
3.6 slides/section5_end.md — S27 结尾
```

### Step 4: 撰写讲稿

```
4.1 更新 script.md（按新叙事线重写）
4.2 Speaker Notes 直接嵌入 slides Markdown 中
```

### Step 5: 本地预览 & 调试

```
5.1 npx serve 打开浏览器预览
5.2 检查大字效果、截图适配、动画流畅度
5.3 用户 Review，修改反馈
```

### Step 6: 生成 keypoints 和 abstract

```
6.1 keypoint.md — 提炼 5-8 个 keypoint（带标题和描述）
6.2 abstract.md — 演讲摘要（200-300 字）
```

---

## 文件组织

```
slides/2026.04_agent_slides/
├── plan.md              ← 本文件
├── script.md            ← 讲稿（独立文件，也可作为 Speaker Notes）
├── keypoint.md          ← 提炼的 keypoint（待生成）
├── abstract.md          ← 演讲摘要（待生成）
├── index.html           ← reveal.js 入口
├── package.json
├── slides/              ← reveal.js slides（Markdown）
│   ├── section0_hook.md
│   ├── section1_demos.md
│   ├── section2_survey.md
│   ├── section3_guide.md
│   ├── section4_action.md
│   └── section5_end.md
├── css/
│   └── custom.css       ← 自定义暗色主题
├── assets/
│   └── screenshots/     ← 截图素材
│       ├── claude-analyze.png
│       ├── codex-review.png
│       ├── cherry-studio.png
│       ├── web-review.png
│       ├── corpus-reviewer.png
│       ├── pipeline-run.png
│       ├── cherry-setup.png
│       └── pipeline-arch.svg
├── survey/              ← survey 仓库（submodule，用于 Demo）
│   └── (git submodule add)
├── demo/                ← Demo 准备脚本
│   ├── prep-web-review.sh    ← 启动 Web 审阅服务
│   ├── prep-corpus-review.sh ← 启动 Corpus Reviewer
│   └── run-claude-analyze.sh ← Claude Code 分析 DECA
└── (旧 Beamer 文件可清理)
```

---

## 待用户操作

| 事项 | 负责人 | 时机 |
|------|--------|------|
| ~~联系王重熙/李文青获取 API 服务信息~~ | — | 不需要，slides 里引导听众联系他俩 |
| 终端录屏（Claude Code / Codex / Cherry Studio） | 用户 | Step 2 之后 |
| Cherry Studio 安装 & 配置 | 用户 | Step 2 之前 |
| Review slides + 讲稿 | 用户 | Step 5 |
