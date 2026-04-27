<!-- .slide: class="origin-anim-slide" data-background-gradient="radial-gradient(circle at 20% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 80% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P0: 目标先出现 -->
<div class="origin-anim-shell">
<div class="origin-anim-kicker">Section 3</div>
<div class="origin-anim-stage">Survey Pipeline 是怎么长出来的</div>
<div class="origin-scene origin-scene-goal">
<div data-auto-animate-target="origin-goal" class="origin-goal-card">
<div class="origin-goal-label">原始目标</div>
<div class="origin-goal-main">找到近 5 年 AI-CPU 方向里真正值得读的论文</div>
<div class="origin-goal-sub">先做初筛，再决定哪些论文值得自己精读。</div>
</div>
<svg class="origin-svg" viewBox="0 0 1000 560" aria-hidden="true">
  <g class="fragment line-draw sketch-delay-1" data-fragment-index="1">
    <path class="rough-line" d="M360 290 C430 342, 575 342, 646 290" />
    <path class="rough-line rough-line-alt" d="M366 298 C438 350, 568 348, 640 296" />
  </g>
  <g class="fragment line-draw sketch-delay-2" data-fragment-index="2">
    <path class="rough-line" d="M400 318 C448 360, 545 360, 592 318" />
    <path class="rough-line rough-line-alt" d="M404 324 C454 366, 538 364, 586 322" />
  </g>
</svg>
</div>
</div>



<!-- .slide: class="excal-play-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 82% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P3: 静态图展示 -->
<div class="excal-play-shell">
<div class="excal-iframe-shell">
<iframe src="assets/plan_step_viewer.html" title="plan and step viewer" class="excal-scroll-frame"></iframe>
</div>
</div>



<!-- .slide: class="excal-play-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 82% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P4: Step1 Doc -->
<div class="excal-play-shell">
<div class="origin-anim-kicker">Doc / Step 1</div>
<div class="origin-anim-stage">第一步的交付物很明确：从 venues 配置抓取 DBLP，产出结构化 CSV。</div>
<div class="excal-iframe-shell">
<iframe src="assets/doc_viewer.html#../workspace/survey/doc/step1-fetch-dblp.md" title="step1 doc" class="excal-scroll-frame"></iframe>
</div>
</div>



<!-- .slide: class="excal-play-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 82% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P5: Step2 Doc -->
<div class="excal-play-shell">
<div class="origin-anim-kicker">Doc / Step 2</div>
<div class="origin-anim-stage">第二步体现工程性：同一份输入，走多条 fallback 路径，把 metadata 尽量补齐。</div>
<div class="excal-iframe-shell">
<iframe src="assets/doc_viewer.html#../workspace/survey/doc/step2-enrich-papers.md" title="step2 doc" class="excal-scroll-frame"></iframe>
</div>
</div>



<!-- .slide: class="excal-play-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 82% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P6: Step3 Doc -->
<div class="excal-play-shell">
<div class="origin-anim-kicker">Doc / Step 3</div>
<div class="origin-anim-stage">第三步不是直接交给 LLM 猜，而是先用 topic config 和摘要关键词做粗筛，得到 scored.csv。</div>
<div class="excal-iframe-shell">
<iframe src="assets/doc_viewer.html#../workspace/survey/doc/step3-score-papers.md" title="step3 doc" class="excal-scroll-frame"></iframe>
</div>
</div>



<!-- .slide: class="excal-play-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 82% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P7: Step4 Doc -->
<div class="excal-play-shell">
<div class="origin-anim-kicker">Doc / Step 4</div>
<div class="origin-anim-stage">第四步就是 humanized 工程：不是直接看 CSV，而是做一个人类能高效 review 的 Web 工具。</div>
<div class="excal-iframe-shell">
<iframe src="assets/doc_viewer.html#../workspace/survey/doc/step4-review.md" title="step4 doc" class="excal-scroll-frame"></iframe>
</div>
</div>



<!-- .slide: class="excal-play-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 82% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P3: Show review demo -->
<div class="excal-play-shell">
<div class="demo-reminder-card">
<div class="demo-reminder-kicker">Live Demo</div>
<div class="demo-reminder-title">展示 Review Demo</div>
<div class="demo-reminder-text">切到 <code>review_server.py</code>，演示 keep / skip / notes 的人工审阅流程。</div>
</div>
</div>




<!-- .slide: class="origin-anim-slide" data-auto-animate data-background-gradient="radial-gradient(circle at 20% 18%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 80% 82%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P1: 约束出现 -->
<div class="origin-anim-shell">
<div class="origin-anim-kicker">Survey Pipeline</div>
<div class="origin-anim-stage">问题不是“能不能做”，而是“怎么做才不漏、不乱、还能 review”</div>
<div class="origin-scene origin-scene-problem">
<div data-auto-animate-target="origin-goal" class="origin-goal-card origin-goal-card-compact">
<div class="origin-goal-label">原始目标</div>
<div class="origin-goal-main">找到近 5 年 AI-CPU 方向里真正值得读的论文</div>
</div>
<div class="origin-constraint-grid">
<div class="origin-constraint-card fragment fade-up sketch-pop" data-fragment-index="1">
<div class="origin-constraint-tag">Source</div>
<div class="origin-constraint-q">怎么尽量不漏论文？</div>
<div class="origin-constraint-a">先拿顶会顶刊全集，而不是先让 LLM 猜相关论文。</div>
</div>
<div class="origin-constraint-card fragment fade-up sketch-pop" data-fragment-index="2">
<div class="origin-constraint-tag">Metadata</div>
<div class="origin-constraint-q">怎么补 DOI 和摘要？</div>
<div class="origin-constraint-a">DBLP 不够，要继续接 S2、Crossref、arXiv。</div>
</div>
<div class="origin-constraint-card fragment fade-up sketch-pop" data-fragment-index="3">
<div class="origin-constraint-tag">Filter</div>
<div class="origin-constraint-q">论文太多怎么先粗筛？</div>
<div class="origin-constraint-a">先做 topic 配置和摘要关键词匹配，把集合缩下来。</div>
</div>
<div class="origin-constraint-card fragment fade-up sketch-pop" data-fragment-index="4">
<div class="origin-constraint-tag">Review</div>
<div class="origin-constraint-q">什么时候交给大模型？</div>
<div class="origin-constraint-a">先把候选论文筛窄，再做批量分析和对抗 review。</div>
</div>
</div>
</div>
</div>



<!-- .slide: class="origin-anim-slide" data-auto-animate data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.16), transparent 20%), radial-gradient(circle at 82% 78%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P2: 收束成 Big Plan -->
<div class="origin-anim-shell">
<div class="origin-anim-kicker">Constraint → Plan</div>
<div class="origin-anim-stage">向上推一点、向下推一点，最后就会逼出一条 Big Plan</div>
<div class="origin-scene origin-scene-merge">
<div data-auto-animate-target="origin-goal" class="origin-goal-card origin-goal-card-pill">
<div class="origin-goal-label">原始目标</div>
<div class="origin-goal-main">找到近 5 年 AI-CPU 方向里真正值得读的论文</div>
</div>
<div class="origin-merge-grid">
<div class="origin-merge-col">
<div class="origin-merge-item">顶会顶刊全集</div>
<div class="origin-merge-item">DOI / abstract 补齐</div>
</div>
<div class="origin-merge-center">
<div class="origin-bigplan-card fragment zoom-in sketch-pop" data-fragment-index="1">
<div class="origin-bigplan-label">Big Plan</div>
<div class="origin-bigplan-main">先抓全集，再补元数据，再粗筛，再 human review，再交给大模型</div>
</div>
</div>
<div class="origin-merge-col">
<div class="origin-merge-item">关键词摘要粗筛</div>
<div class="origin-merge-item">批量分析 + 对抗 review</div>
</div>
</div>
<div class="origin-plan-strip fragment fade-up sketch-pop" data-fragment-index="2">
<span>fetch</span>
<span>enrich</span>
<span>score</span>
<span>review</span>
<span>llm</span>
<span>doc</span>
</div>
</div>
</div>