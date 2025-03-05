setup:
	make htmx
	make python
	make tailwindcss

htmx:
	wget https://unpkg.com/htmx.org@2.0.4/dist/htmx.min.js -O static/htmx.min.js

python:
	pip install -r requirements.txt

tailwindcss:
	wget https://github.com/tailwindlabs/tailwindcss/releases/download/v4.0.9/tailwindcss-linux-x64
	mv tailwindcss-linux-x64 tailwindcss
	chmod +x tailwindcss

dev:
	fastapi dev app.py --port 8125

css:
	./tailwindcss --input input.css --output static/styles.css


css-watch:
	./tailwindcss --input input.css --output static/styles.css --watch
