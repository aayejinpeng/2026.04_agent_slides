# Survey Pipeline 全流程

<!-- 以 MICRO'25 DECA 论文走完 9 步 -->



## Web 审阅：14600 篇怎么筛到 196 篇？

<div class="two-col">
<div>
- 自动关键词打分排序
- <strong>2×2 网格</strong>同时看 4 篇论文
- 关键词<strong>金色高亮</strong>（按权重渐变）
- 键盘快捷键：`1234` keep / `qwer` skip
</div>
<div class="compare-card neutral" style="font-size:0.75em">
<strong>你只需要做判断</strong><br>
这篇论文和我相关吗？<br>
是 → keep<br>
不是 → skip<br>
标记写回 CSV，下一步用
</div>
</div>

<div class="tiny" style="margin-top:2em">
📌 现场启动 review_server.py Demo / 截图待补充
</div>



## 人做决策，AI 做苦力

<div class="big-phrase">
<span class="highlight">人</span>判断相关性 · <span class="green">AI</span>做重复劳动
</div>



## Agent 编排：Producer-Consumer 流水线

<div class="two-col">
<div class="compare-card good">
<strong>Producer（Claude Code）</strong><br>
读取 draft JSON<br>
调用 Claude 分析论文<br>
保存结构化 dossier
</div>
<div class="compare-card neutral">
<strong>Consumer（Codex CLI）</strong><br>
读取 Claude 的分析<br>
调用 Codex 审查验证<br>
保存审查 + 修正版本
</div>
</div>

<div style="text-align:center; margin-top:1em; font-size:1.3em; color:var(--ciae-light)">
Claude 分析完一篇 → 立刻送 Codex 审查 → <strong>Pipeline 并行</strong>
</div>

<div class="tiny" style="margin-top:1em">
📌 截图待补充：pipeline_run.png
</div>



## Corpus Reviewer：对照原文确认

<div class="two-col">
<div>
<strong>左：AI 分析结果</strong>
<div class="small">
四视图切换：<br>
1. GPT Review（审查意见）<br>
2. GLM Extraction（原始提取）<br>
3. GPT Revised（修正版本）<br>
4. Human Edit（你编辑保存）
</div>
</div>
<div>
<strong>右：原始论文 PDF</strong>
<div class="small">
对照看，有问题的立刻改<br>
Ctrl+S 保存你的修改
</div>
</div>
</div>

<div class="tiny" style="margin-top:1em">
📌 现场启动 corpus_reviewer.py Demo / 截图待补充
</div>



## 不盲目信任 AI，但也不手动做苦力

<div class="big-phrase" style="font-size:1.5em; padding-top:15%">
AI 分析 → <span class="highlight">人工对照确认</span> → 可引用素材
</div>



## 输出：开题报告直接能用

```json
{
  "research_purpose": "研究目的",          // → 研究目的章节
  "contributions": [                         // → 国内外研究现状
    { "point": "贡献点", "evidence": "原文" }
  ],
  "key_results": "实验数据（含具体数值）",    // → 可行性论据
  "gap_identified": [{                       // → 研究空白
    "gap": "空白", "relevance_to_cute": "关联"
  }],
  "proposal_evidence": {
    "for_state_of_art": "...",               // → 研究现状论据
    "for_gap": "...",                        // → 研究空白论据
    "for_feasibility": "..."                 // → 可行性论据
  }
}
```



## 成果数据

<div style="text-align:center; line-height:2.5">
<span class="data-val">14,600+</span> <span class="unit">篇论文</span> &nbsp;&nbsp;
<span class="data-val">27+7</span> <span class="unit">会议/期刊</span> &nbsp;&nbsp;
<span class="data-val">92%</span> <span class="unit">摘要覆盖</span><br>
<span class="data-val">196</span> <span class="unit">篇筛选</span> &nbsp;&nbsp;
<span class="data-val">12</span> <span class="unit">篇 keep</span> &nbsp;&nbsp;
<span class="data-val">5-7x</span> <span class="unit">效率提升</span>
</div>



## Agent 不是替代你，是放大你

<div class="big-phrase" style="padding-top:18%">
<span class="highlight">Agent 不是替代你</span>，是<span class="green">放大你</span>
</div>
