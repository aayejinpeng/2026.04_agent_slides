.PHONY: serve build clean preview demo demo-stop install

PORT ?= 7777

serve:
	python3 -m http.server $(PORT) --bind 127.0.0.1

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

install:
	npm install

demo:
	@echo "Starting demo services..."
	@bash demo/start-all.sh

demo-review:
	@bash demo/start-review-server.sh

demo-corpus:
	@bash demo/start-corpus-reviewer.sh

demo-stop:
	@pkill -f "review_server.py" 2>/dev/null || true
	@pkill -f "corpus_reviewer.py" 2>/dev/null || true
	@echo "Demo services stopped."
