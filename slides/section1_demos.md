<!-- 三个 Demo，每个 wow 完切回 slides -->



## Claude Code 分析论文

<div class="compare-card good">
<code style="font-size:0.9em">claude /analyze-paper-claude DECA-*.json</code>
</div>

<div class="two-col" style="margin-top:1em">
<div>
<div class="small">
<strong>Plan</strong>：理解任务，规划分析步骤
</div>
<div class="small">
<strong>Read</strong>：读取论文全文（几万字 body_text）
</div>
<div class="small">
<strong>Edit</strong>：输出结构化 dossier JSON
</div>
</div>
<div>
<div class="compare-card neutral" style="font-size:0.75em">
不是 ChatGPT 那种<br>"你问一句我答一句"<br><br>
你<strong>定义目标 → 它执行 → 你审核</strong>
</div>
</div>
</div>

<div class="tiny" style="margin-top:1.5em">
📌 现场 Demo / 保底截图：claude-analyze.png
</div>



## AI 不只回答问题，AI 能自己干活

<div class="big-phrase">
<span class="highlight">Plan → Read → Edit</span><br>
<span style="font-size:0.6em">你只需要描述目标，剩下的它来</span>
</div>



## Codex 自动审查

<div class="compare-card neutral">
Claude 分析 → Codex 审查 → 人工确认
</div>

<div class="small" style="margin-top:1em">
→ Codex 在沙箱中批量审查 Claude 的分析结果
</div>

<div class="small">
→ 找出错误、补充遗漏、给出修正版本
</div>

<div class="tiny" style="margin-top:2em">
📌 现场 Demo / 保底截图：codex-review.png
</div>



## 两个模型互相检查 > 自己检查自己

<div class="big-phrase" style="padding-top:20%">
<span class="highlight">Claude 生成</span> + <span class="green">GPT 审查</span> + 人工确认
</div>



## Cherry Studio 零门槛

<div class="two-col">
<div>
<div class="compare-card good">
<strong>300+ 模型</strong> 一键切换
</div>
<div class="compare-card good" style="margin-top:0.5em">
<strong>MCP 支持</strong> + 知识库 RAG
</div>
<div class="compare-card good" style="margin-top:0.5em">
<strong>图形界面</strong> 配个 Key 就能用
</div>
</div>
<div>
<div class="small" style="margin-top:0.5em">
跨平台：Windows / macOS / Linux
</div>
<div class="small" style="margin-top:0.5em">
不需要命令行，不需要写代码
</div>
</div>
</div>

<div class="tiny" style="margin-top:2em">
📌 现场 Demo / 保底截图：cherry-studio.png
</div>



## 写代码用 CC，跑任务用 CX，日常用 Cherry

<div class="big-phrase">
<span class="highlight">写代码用 CC</span>，<span class="accent">跑任务用 CX</span>，<span class="green">日常用 Cherry</span>
</div>



## 那把这些东西串起来能做什么？



## Pipeline 全景

<div class="small" style="text-align:center; margin-bottom:1em">
9 步流水线 · 14600 篇 → 196 篇 → 12 篇核心 → 结构化 dossier
</div>

<div style="display:flex; gap:0.5em; justify-content:center">
<div class="compare-card good" style="flex:2; text-align:center; font-size:0.8em">
<strong>阶段 A</strong><br>
DBLP 抓取 → 摘要富化 → 关键词打分<br>
<span class="tiny">纯脚本自动化 · 14600 篇筛到 196 篇</span>
</div>
<div class="compare-card neutral" style="flex:1; text-align:center; font-size:0.8em">
<strong>阶段 B</strong><br>
Web 审阅 → PDF 同步<br>
<span class="tiny">人工把关 · 键盘标记 keep/skip</span>
</div>
<div class="compare-card" style="flex:2; text-align:center; font-size:0.8em; border-left:4px solid #ff9900">
<strong>阶段 C</strong><br>
PDF 解析 → Claude 分析 → GPT 审查 → 人工确认<br>
<span class="tiny">Agent 主战场 · 产出结构化 dossier</span>
</div>
</div>



## 14600 → 196 → 12

<div style="text-align:center">
<span class="data-val" style="font-size:2em">14,600</span> <span class="unit">篇论文</span>
<span style="font-size:2em; color:#888"> → </span>
<span class="data-val" style="font-size:2em">196</span> <span class="unit">篇高相关</span>
<span style="font-size:2em; color:#888"> → </span>
<span class="data-val" style="font-size:2em">12</span> <span class="unit">篇核心</span>
</div>

<div class="big-phrase" style="font-size:1.2em; padding-top:2em">
1-2 周 → <span class="green">1-2 天</span>（<span class="highlight">5-7x</span>）
</div>
