<!-- .slide: class="plan-origin-slide" data-background-gradient="radial-gradient(circle at 18% 18%, rgba(58,127,213,0.16), transparent 22%), radial-gradient(circle at 82% 80%, rgba(0,78,162,0.16), transparent 26%), linear-gradient(135deg, #08111f 0%, #040913 52%, #02050b 100%)" -->
<!-- P0: Survey Pipeline 的由来 -->
<div class="plan-origin-shell">
<div class="plan-section-head">
<div class="plan-kicker">Survey Pipeline</div>
<div class="plan-section-title">这条流水线不是一开始就设计好的，是从综述调研的约束里长出来的</div>
</div>
<div class="plan-origin-goal">
<div class="plan-origin-label">原始目标</div>
<div class="plan-origin-text">我一开始只是想找到某个 topic 下真正相关、值得读、最后能服务综述写作的论文。</div>
</div>
<div class="plan-origin-grid">
<div class="plan-origin-card">
<div class="plan-origin-q">论文列表从哪里来？</div>
<div class="plan-origin-a">DBLP 可以给 venue/year 的入口，但 DOI、abstract 不一定完整。</div>
</div>
<div class="plan-origin-card">
<div class="plan-origin-q">摘要和 DOI 怎么补齐？</div>
<div class="plan-origin-a">需要接 S2、Crossref、arXiv，还要处理失败和 rate limit。</div>
</div>
<div class="plan-origin-card">
<div class="plan-origin-q">相关性怎么先粗筛？</div>
<div class="plan-origin-a">不能让 LLM 看所有论文，先用 topic config 和规则打分缩小集合。</div>
</div>
<div class="plan-origin-card">
<div class="plan-origin-q">人什么时候介入？</div>
<div class="plan-origin-a">全自动会漏，全部人工又太累，所以要在关键节点做 human review。</div>
</div>
</div>
<div class="plan-origin-footer">所以我没有直接让 Agent “帮我做综述”，而是先把问题拆成一条可验证的数据流水线。</div>
</div>
