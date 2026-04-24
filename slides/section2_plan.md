<!-- .slide: class="plan-lead-slide" data-background-gradient="radial-gradient(circle at 20% 20%, rgba(58,127,213,0.18), transparent 24%), radial-gradient(circle at 80% 75%, rgba(0,78,162,0.16), transparent 28%), linear-gradient(135deg, #07111e 0%, #040813 55%, #02050a 100%)" -->
<!-- P0: 大字过渡 -->
<div class="plan-lead-shell">
<div class="plan-kicker">Section 1</div>
<div class="plan-lead-title">先把流程和交付物定义清楚</div>
<div class="plan-lead-subtitle">Turning Point 之后，真正起作用的不是一句“用 Agent 干活”，而是一套分阶段推进、每步都有交付物的工程流程。</div>
<div class="plan-lead-note">先讲这套流程，再看它在 Survey 这个项目里是怎么落地成目录、脚本和工具的。</div>
</div>



<!-- .slide: class="plan-pipeline-slide" data-background-gradient="radial-gradient(circle at 85% 15%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 10% 90%, rgba(0,78,162,0.14), transparent 24%), linear-gradient(180deg, #050912 0%, #02050a 100%)" -->
<!-- P1: 整体流程 -->
<div class="plan-pipeline-shell">
<div class="plan-section-head">
<div class="plan-kicker">Workflow</div>
<div class="plan-section-title">一套完整的 agent 工程流程，应该同时定义步骤和交付物</div>
</div>
<div class="plan-pipeline-strip plan-pipeline-strip-wide">
<div class="plan-node">Big Plan</div>
<div class="plan-node-arrow">→</div>
<div class="plan-node">Step Plan</div>
<div class="plan-node-arrow">→</div>
<div class="plan-node">Exec-Review</div>
<div class="plan-node-arrow">→</div>
<div class="plan-node">Humanized</div>
<div class="plan-node-arrow">→</div>
<div class="plan-node">Skill / Doc</div>
</div>
<div class="plan-deliverable-grid">
<div class="plan-deliverable-card">
<div class="plan-deliverable-stage">01</div>
<div class="plan-deliverable-title">Big Plan</div>
<div class="plan-deliverable-file">bigplan.md</div>
<div class="plan-deliverable-text">先捋清方法、组织逻辑，以及每个 step 要交付什么。</div>
</div>
<div class="plan-deliverable-card">
<div class="plan-deliverable-stage">02</div>
<div class="plan-deliverable-title">Step Plan</div>
<div class="plan-deliverable-file">stepXXXplan.md</div>
<div class="plan-deliverable-text">把每一步细化成可执行、可 review 的操作流程。</div>
</div>
<div class="plan-deliverable-card">
<div class="plan-deliverable-stage">03</div>
<div class="plan-deliverable-title">Exec-Review</div>
<div class="plan-deliverable-file">结构化输出</div>
<div class="plan-deliverable-text">和 Agent 协作完成任务，再把结果封装成机器可读输出。</div>
</div>
<div class="plan-deliverable-card">
<div class="plan-deliverable-stage">03.5</div>
<div class="plan-deliverable-title">Humanized</div>
<div class="plan-deliverable-file">审阅工具</div>
<div class="plan-deliverable-text">给人类补一层好用的 review 界面，降低审阅成本。</div>
</div>
<div class="plan-deliverable-card">
<div class="plan-deliverable-stage">04</div>
<div class="plan-deliverable-title">Skill / Doc</div>
<div class="plan-deliverable-file">脚本 / skill / 文档</div>
<div class="plan-deliverable-text">做归档和压缩，让流程稳定、可复现、可复用。</div>
</div>
</div>
</div>



<!-- .slide: class="plan-step-slide" data-background-gradient="radial-gradient(circle at 18% 20%, rgba(58,127,213,0.16), transparent 22%), radial-gradient(circle at 82% 78%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 50%, #02050b 100%)" -->
<!-- P2: Big Plan -->
<div class="plan-step-shell">
<div class="plan-section-head">
<div class="plan-kicker">Big Plan</div>
<div class="plan-section-title">Big Plan 先回答“怎么组织”，而不是立刻回答“怎么实现”</div>
</div>
<div class="plan-contract-grid">
<div class="plan-contract-card">
<div class="plan-contract-label">Focus</div>
<div class="plan-contract-title">先定方法和阶段</div>
<div class="plan-contract-body">把目标拆成几个阶段，每个阶段解决一个明确问题，不让执行一开始就发散。</div>
</div>
<div class="plan-contract-card">
<div class="plan-contract-label">Output</div>
<div class="plan-contract-title">bigplan.md</div>
<div class="plan-contract-body">记录整体方法、组织逻辑，以及每个 step 大致要达到的效果。</div>
</div>
<div class="plan-contract-card">
<div class="plan-contract-label">Boundary</div>
<div class="plan-contract-title">不写细节实现</div>
<div class="plan-contract-body">Big Plan 不该细到 API 参数，而是先把依赖关系和交付物边界定住。</div>
</div>
<div class="plan-contract-card">
<div class="plan-contract-label">Why</div>
<div class="plan-contract-title">让后续 Step Plan 有锚点</div>
<div class="plan-contract-body">没有 Big Plan，后面的 step 很容易各写各的，最后拼不起来。</div>
</div>
</div>
<div class="plan-step-footer">Big Plan 的作用是先把工程骨架搭起来，再决定每块骨头怎么长肉。</div>
</div>



<!-- .slide: class="plan-io-slide" data-background-gradient="radial-gradient(circle at 82% 20%, rgba(58,127,213,0.14), transparent 20%), radial-gradient(circle at 18% 85%, rgba(0,78,162,0.14), transparent 22%), linear-gradient(180deg, #050912 0%, #02050a 100%)" -->
<!-- P3: Step Plan -->
<div class="plan-io-shell">
<div class="plan-section-head">
<div class="plan-kicker">Step Plan</div>
<div class="plan-section-title">Step Plan 要细化到一次 API 调用、一个脚本，或者一个典型 demo</div>
</div>
<div class="plan-io-compare">
<div class="plan-io-card good">
<div class="plan-io-title">Step Plan 里要写什么？</div>
<div class="plan-io-line">这一步的目标和边界</div>
<div class="plan-io-line">输入输出格式，最好结构化</div>
<div class="plan-io-line">脚本入口 / API 调用 / demo 操作</div>
<div class="plan-io-line">人工 review 点和失败处理</div>
</div>
<div class="plan-io-card good">
<div class="plan-io-title">交付物长什么样？</div>
<div class="plan-io-line">step001plan.md</div>
<div class="plan-io-line">step002plan.md</div>
<div class="plan-io-line">……</div>
<div class="plan-io-line">每一步都应该单独可执行、单独可 review</div>
</div>
</div>
<div class="plan-io-emphasis">Step Plan 的本质不是“再写一份计划”，而是把步骤细化到可以真正落地执行。</div>
</div>



<!-- .slide: class="plan-drift-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.16), transparent 20%), radial-gradient(circle at 84% 76%, rgba(0,78,162,0.16), transparent 24%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P4: Exec-Review + Humanized -->
<div class="plan-drift-shell">
<div class="plan-section-head">
<div class="plan-kicker">Exec-Review</div>
<div class="plan-section-title">执行不只是“跑完”，而是“跑完以后还能 review 和继续往下接”</div>
</div>
<div class="plan-drift-grid plan-drift-grid-wide">
<div class="plan-drift-card">
<div class="plan-drift-label">Exec-Review Loop</div>
<div class="plan-drift-main">先执行，再 review</div>
<div class="plan-drift-text">按 Step Plan 推进，和 Agent 协作完成任务，把产出收敛成结构化输出。</div>
</div>
<div class="plan-drift-arrow">→</div>
<div class="plan-drift-card">
<div class="plan-drift-label">Structured Output</div>
<div class="plan-drift-main">机器可读</div>
<div class="plan-drift-text">优先输出 CSV / JSON / 明确 schema，而不是难以复用的自由文本。</div>
</div>
<div class="plan-drift-arrow">→</div>
<div class="plan-drift-card">
<div class="plan-drift-label">Humanized Tool</div>
<div class="plan-drift-main">人类好审</div>
<div class="plan-drift-text">再补一层适合人类判断的 review 工具，让结构化结果真正能被人接住。</div>
</div>
</div>
<div class="plan-drift-note">Humanized 工程不是额外花活，它是把“机器可读”转成“人类可高效决策”的那一层桥。</div>
</div>



<!-- .slide: class="plan-summary-slide" data-background-gradient="radial-gradient(circle at 50% 20%, rgba(58,127,213,0.2), transparent 22%), radial-gradient(circle at 50% 80%, rgba(0,78,162,0.18), transparent 28%), linear-gradient(180deg, #07111e 0%, #02050a 100%)" -->
<!-- P5: Skill / Doc + 原则 -->
<div class="plan-summary-shell">
<div class="plan-kicker">Principle</div>
<div class="plan-summary-title">不是所有任务都必须让 LLM 参与</div>
<div class="plan-summary-points">
<div class="plan-summary-line">能直接写成稳定脚本的，就让脚本处理结构化输入输出。</div>
<div class="plan-summary-line">必须让 LLM 参与时，再为它补上 harness、review 点和结构化约束。</div>
<div class="plan-summary-line">最后把流程压缩成脚本、skill 和文档，做成稳定可复现的资产。</div>
</div>
</div>
