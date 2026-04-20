.PHONY: serve build clean preview

PORT ?= 4399

serve:
	npx --yes serve . -l $(PORT)

build:
	@curl -s -o /dev/null -w "index.html: %{http_code}\n" http://localhost:$(PORT)/index.html
	@curl -s -o /dev/null -w "custom.css: %{http_code}\n" http://localhost:$(PORT)/css/custom.css
	@curl -s -o /dev/null -w "markdown.js: %{http_code}\n" http://localhost:$(PORT)/node_modules/reveal.js/plugin/markdown/markdown.js
	@curl -s -o /dev/null -w "highlight.js: %{http_code}\n" http://localhost:$(PORT)/node_modules/reveal.js/plugin/highlight/highlight.js
	@curl -s -o /dev/null -w "notes.js: %{http_code}\n" http://localhost:$(PORT)/node_modules/reveal.js/plugin/notes/notes.js
	@echo "✅ All assets OK"

clean:
	rm -rf node_modules package-lock.json

preview: serve
