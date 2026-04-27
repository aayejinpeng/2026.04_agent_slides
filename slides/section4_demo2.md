<!-- .slide: class="arena-lead-slide" data-background-gradient="radial-gradient(circle at 20% 20%, rgba(58,127,213,0.18), transparent 24%), radial-gradient(circle at 80% 78%, rgba(0,78,162,0.18), transparent 28%), linear-gradient(135deg, #07111e 0%, #040813 55%, #02050a 100%)" -->
<!-- P0: Agent 主战场 -->
<div class="arena-shell">
<div class="arena-kicker">Section 4</div>
<div class="arena-title">Agent 主战场</div>
<div class="arena-subtitle">前面已经把论文抓到、筛到、review 到足够小的集合了。接下来就是批量让 LLM 参与分析和审查。</div>
</div>



<!-- .slide: class="arena-reminder-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.16), transparent 22%), radial-gradient(circle at 82% 80%, rgba(0,78,162,0.16), transparent 26%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P1: 先展示 demo -->
<div class="arena-shell">
<div class="demo-reminder-card arena-reminder-card">
<div class="demo-reminder-kicker">Live Demo</div>
<div class="demo-reminder-title">先展示 LLM 生成结果</div>
<div class="demo-reminder-text">这里先切到 <code>corpus_reviewer.py</code>，给大家直接看 draft / analysis / review / revised 的最终效果。</div>
</div>
</div>



<!-- .slide: class="arena-arch-slide" data-background-gradient="radial-gradient(circle at 82% 18%, rgba(58,127,213,0.14), transparent 22%), radial-gradient(circle at 18% 84%, rgba(0,78,162,0.16), transparent 26%), linear-gradient(180deg, #050912 0%, #02050a 100%)" -->
<!-- P2: 这个东西怎么来的 -->
<div class="arena-shell">
<div class="arena-kicker">Pipeline</div>
<div class="arena-stage">这个 demo 不是一次 prompt 的结果，而是一个批量 pipeline 的输出。</div>
<div class="arena-flow">
<div class="arena-box">
<div class="arena-box-label">Input</div>
<div class="arena-box-title">Draft JSON</div>
<div class="arena-box-text">PDF + CSV 元数据先被抽成结构化输入，而不是直接把 PDF 丢给模型。</div>
</div>
<div class="arena-arrow">→</div>
<div class="arena-box">
<div class="arena-box-label">Producer</div>
<div class="arena-box-title">LLM Analysis</div>
<div class="arena-box-text">第一个模型读取 draft JSON，生成结构化 dossier。</div>
</div>
<div class="arena-arrow">→</div>
<div class="arena-box">
<div class="arena-box-label">Consumer</div>
<div class="arena-box-title">LLM Review</div>
<div class="arena-box-text">第二个模型逐字段审查，再输出 review 和 revised。</div>
</div>
</div>
<div class="arena-note">所以你刚才看到的 demo，其实已经是“结构化输入 → 双模型流水线 → 可人工审查输出”的最终形态。</div>
</div>



<!-- .slide: class="arena-harness-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.16), transparent 20%), radial-gradient(circle at 84% 78%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P3: 我们做了哪些 harness -->
<div class="arena-shell">
<div class="arena-kicker">Harness</div>
<div class="arena-stage">这里真正有价值的，不是“让模型生成”，而是把生成过程约束进一个可验证系统里。</div>
<div class="arena-grid">
<div class="arena-card">
<div class="arena-card-no">01</div>
<div class="arena-card-title">结构化输入</div>
<div class="arena-card-text">先做 draft JSON，把 PDF、元数据、正文提取收成固定 schema。</div>
</div>
<div class="arena-card">
<div class="arena-card-no">02</div>
<div class="arena-card-title">结构化输出</div>
<div class="arena-card-text">analysis / review / revised 都不是自由文本，而是固定字段的 JSON。</div>
</div>
<div class="arena-card">
<div class="arena-card-no">03</div>
<div class="arena-card-title">双模型对抗</div>
<div class="arena-card-text">一个负责生成，一个负责逐字段审查，降低单模型漂移风险。</div>
</div>
<div class="arena-card">
<div class="arena-card-no">04</div>
<div class="arena-card-title">确定性预检</div>
<div class="arena-card-text">在真正人工介入前，先用脚本检查结构、枚举、引用、数值等硬约束。</div>
</div>
<div class="arena-card">
<div class="arena-card-no">05</div>
<div class="arena-card-title">状态持久化</div>
<div class="arena-card-text">每个阶段都有状态文件、日志、summary，失败后能断点续跑。</div>
</div>
<div class="arena-card">
<div class="arena-card-no">06</div>
<div class="arena-card-title">Human Review</div>
<div class="arena-card-text">最后放进 corpus reviewer，让人类真正对照 PDF 做决定。</div>
</div>
</div>
</div>



<!-- .slide: class="arena-summary-slide" data-background-gradient="radial-gradient(circle at 50% 20%, rgba(58,127,213,0.2), transparent 22%), radial-gradient(circle at 50% 80%, rgba(0,78,162,0.18), transparent 28%), linear-gradient(180deg, #07111e 0%, #02050a 100%)" -->
<!-- P4: 总结 -->
<div class="arena-shell arena-shell-center">
<div class="arena-kicker">Takeaway</div>
<div class="arena-title arena-title-tight">不盲目信任 AI，但也不手动做苦力</div>
<div class="arena-summary-list">
<div class="arena-summary-line">先把论文筛到足够小，再让 LLM 进入主战场。</div>
<div class="arena-summary-line">LLM 参与的部分，一定要有结构化输入输出和 review 点。</div>
<div class="arena-summary-line">真正可靠的不是 prompt，而是 harness。</div>
</div>
</div>
