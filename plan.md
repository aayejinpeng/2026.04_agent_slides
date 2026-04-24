# Harness Engineering — reveal.js Workflow-driven（v4 重构）

> **风格**：Workflow-driven，跟着真实项目走一遍
> **框架**：reveal.js
> **目录**：`/root/opencute/slides/2026.04_agent_slides/`
> **时长**：~25 min 内容 + 5 min Q&A
> **听众**：研究生同学，有 AI 基础
---

## 核心叙事

**用一个真实项目（Survey Pipeline）的 workflow 走一遍，展示 Harness 工程方法论：**

```
大 Plan → Step Plan（结构化 I/O）→ 执行 → 人工 Review → 生成 Doc
```

关键洞察：
- Doc 是最后生成的，不是先写的（偏差是正常的）
- 每个 step 有结构化的输入输出
- 人工 review 是关键节点

---

## 节奏安排

| 阶段 | 时长 | 内容 |
|------|------|------|
| Hook | 1-2 min | 痛点 + 主题 |
| 目录结构总览 | 2 min | survey 目录当 roadmap |
| Plan → Step Plan | 3 min | 大 Plan 拆分、小 plan 结构化 I/O、偏差正常、Doc 最后生成 |
| 执行 Demo（Step 1-5） | 4 min | 抓取→打分→Web 审阅 |
| 执行 Demo（Step 6-8） | 6 min | Agent 分析、双模型、Corpus Reviewer live demo |
| Meta demo | 3 min | slides 本身 |
| 收尾 | 30 sec | Just do it + Q&A |

---

## 逐页安排（待填写）

> 下面由用户逐页定义内容，定义好后生成 slides

### Section 0: Hook（1-2 min）

怎么用好agent辅助提高生产力

### Section 1: 目录结构总览（2 min）



### Section 2: Plan → Step Plan（3 min）



### Section 3: 执行 Demo Step 1-5（4 min）



### Section 4: 执行 Demo Step 6-8（6 min）



### Section 5: Meta demo（3 min）



### Section 6: 收尾（30 sec）



---

## Demo 素材清单（DECA 论文）

| 资源 | 路径 | 状态 |
|------|------|------|
| 论文 PDF | `workspace/survey/pdfs/cpu-ai/DECA-*.pdf` | ✅ |
| Draft JSON | `workspace/survey/data/topics/cpu-ai/corpus/draft/DECA-*.json` | ✅ |
| Claude 分析 | `workspace/survey/data/topics/cpu-ai/corpus/llm/glm5.1/DECA-*.json` | ✅ |
| GPT 审查 | `workspace/survey/data/topics/cpu-ai/corpus/llm/gpt5.4/DECA-*.review.json` | ✅ |
| GPT 修正 | `workspace/survey/data/topics/cpu-ai/corpus/llm/gpt5.4/DECA-*.revised.json` | ✅ |
| 打分 CSV | `workspace/survey/data/topics/cpu-ai/scored-score-gte11.csv` | ✅ |

---

## Demo 方式

| 类型 | 方式 | 原因 |
|------|------|------|
| Web 审阅（review_server.py） | 现场 live demo | 本地 Flask，稳定，交互感强 |
| Corpus Reviewer | 现场 live demo | 左右分栏对照，必须动起来 |
| Terminal 脚本执行 | 提前录 asciinema | API 调用时间不可控 |
| Claude Code CLI | 提前录 asciinema | 网络问题风险高 |

---

## 文件组织

```
slides/2026.04_agent_slides/
├── plan.md              ← 本文件
├── keypoint.md          ← 核心原则
├── abstract.md          ← 演讲摘要
├── index.html           ← reveal.js 入口
├── package.json
├── slides/              ← reveal.js slides（Markdown）
│   ├── section0_hook.md
│   ├── section1_overview.md
│   ├── section2_plan.md
│   ├── section3_demo1.md
│   ├── section4_demo2.md
│   └── section5_meta.md
├── css/
│   └── custom.css
├── assets/
│   └── screenshots/
├── demo/                ← Demo 启动脚本
│   ├── start-review-server.sh
│   ├── start-corpus-reviewer.sh
│   └── start-all.sh
└── workspace/
    └── survey/          ← Survey 项目（Demo 用）
```
