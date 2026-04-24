<!-- .slide: class="overview-lead-slide" data-background-gradient="radial-gradient(circle at 20% 20%, rgba(58,127,213,0.18), transparent 22%), radial-gradient(circle at 80% 80%, rgba(0,78,162,0.18), transparent 28%), linear-gradient(135deg, #07111e 0%, #040813 55%, #02050a 100%)" -->
<!-- P0: 大字过渡 -->
<div class="overview-lead-shell">
<div class="overview-kicker">Section 2</div>
<div class="overview-lead-title">再看这套流程在 Survey 里怎么落地</div>
<div class="overview-lead-subtitle">Survey 是我自己做的一个综述调研 agent 工程，下面按真实工程目录看一下前面那套流程最后长成了什么样。</div>
<div class="overview-lead-note">这一节重点不是解释每个脚本细节，而是看交付物最终落到了哪些文件和目录里。</div>
</div>



<!-- .slide: class="overview-tree-slide" data-background-gradient="radial-gradient(circle at 85% 15%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 10% 90%, rgba(0,78,162,0.14), transparent 24%), linear-gradient(180deg, #050912 0%, #02050a 100%)" -->
<!-- P1: 目录结构全景 -->
<div class="overview-tree-shell">
<div class="overview-section-head">
<div class="overview-kicker">Project Layout</div>
<div class="overview-section-title">在 Survey 里，流程最终被压成了这些目录和文件</div>
</div>
<div class="overview-two-col">
<div class="overview-terminal-card">
<div class="overview-terminal-bar">
<span></span><span></span><span></span>
</div>
<div class="overview-tree-code">
<div class="overview-tree-line">survey/</div>
<div class="overview-tree-line">├── <span class="tree-accent">plan/</span> <span class="tree-desc">大 Plan + Step Plan</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">configs/</span> <span class="tree-desc">输入主题、venue、约束</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">fetch_dblp.py</span> <span class="tree-desc">Step 1</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">enrich_papers.py</span> <span class="tree-desc">Step 2</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">score_papers.py</span> <span class="tree-desc">Step 3</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">paper_review_pipeline.py</span> <span class="tree-desc">Step 6-8</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">data/</span> <span class="tree-desc">CSV → CSV → JSON</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">pdfs/</span> <span class="tree-desc">原始论文素材</span></div>
<div class="overview-tree-line">├── <span class="tree-accent">skill/</span> <span class="tree-desc">Agent 的 harness</span></div>
<div class="overview-tree-line">└── <span class="tree-accent">doc/</span> <span class="tree-desc">执行后生成文档</span></div>
</div>
</div>
<div class="overview-side-notes">
<div class="overview-note-card">
<div class="overview-note-title">这页重点</div>
<div class="overview-note-text">重点不是记住文件名，而是看清楚这些交付物最后分别落到了哪里：plan、step、结构化输出、review 工具和文档。</div>
</div>
<div class="overview-chip-grid">
<div class="overview-mini-chip">Plan</div>
<div class="overview-mini-chip">Config</div>
<div class="overview-mini-chip">Execute</div>
<div class="overview-mini-chip">Structured I/O</div>
<div class="overview-mini-chip">Review</div>
<div class="overview-mini-chip">Doc</div>
</div>
</div>
</div>
</div>



<!-- .slide: class="overview-map-slide" data-background-gradient="radial-gradient(circle at 20% 20%, rgba(58,127,213,0.16), transparent 20%), radial-gradient(circle at 85% 78%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 50%, #02050b 100%)" -->
<!-- P2: 目录 → Workflow 映射 -->
<div class="overview-map-shell">
<div class="overview-section-head">
<div class="overview-kicker">Execution Order</div>
<div class="overview-section-title">把目录映射回前面的流程，就能看清这套方法是怎么落地的</div>
</div>
<div class="overview-map-grid overview-map-grid-compact">
<div class="overview-map-card fragment fade-up" data-fragment-index="1">
<div class="overview-map-path">plan/README.md</div>
<div class="overview-map-arrow">→</div>
<div class="overview-map-desc">对应 Big Plan，先定义方法、阶段和交付物</div>
</div>
<div class="overview-map-card fragment fade-up" data-fragment-index="2">
<div class="overview-map-path">plan/step*.md</div>
<div class="overview-map-arrow">→</div>
<div class="overview-map-desc">对应 Step Plan，把每一步细化成可执行流程</div>
</div>
<div class="overview-map-card fragment fade-up" data-fragment-index="3">
<div class="overview-map-path">configs/ + *.py</div>
<div class="overview-map-arrow">→</div>
<div class="overview-map-desc">对应执行层：配置约束 + 脚本入口</div>
</div>
<div class="overview-map-card fragment fade-up" data-fragment-index="4">
<div class="overview-map-path">data/ + pdfs/</div>
<div class="overview-map-arrow">→</div>
<div class="overview-map-desc">对应结构化输出：原始素材和中间结果都留痕</div>
</div>
<div class="overview-map-card fragment fade-up" data-fragment-index="5">
<div class="overview-map-path">skill/ + review</div>
<div class="overview-map-arrow">→</div>
<div class="overview-map-desc">对应 humanized / harness：把机器结果变成人类可审</div>
</div>
<div class="overview-map-card fragment fade-up" data-fragment-index="6">
<div class="overview-map-path">doc/</div>
<div class="overview-map-arrow">→</div>
<div class="overview-map-desc">对应归档压缩：把流程固化成文档和可复现说明</div>
</div>
</div>
<div class="overview-map-footer fragment fade-up" data-fragment-index="7">后面几节我们就顺着这些真实交付物，往下看每一步是怎么跑起来的。</div>
</div>
