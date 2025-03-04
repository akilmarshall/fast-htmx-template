setup:
	make htmx
	make requirements

htmx:
	wget https://unpkg.com/htmx.org@2.0.4/dist/htmx.min.js -O static/htmx.min.js

requirements:
	pip install -r requirements.txt

dev:
	fastapi dev app.py --port 8125
