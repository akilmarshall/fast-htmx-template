import logging
from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
from jinja2 import Environment, FileSystemLoader


logging.basicConfig(level=logging.INFO)
LOGGER = logging.getLogger(__name__)

app = FastAPI()
app.mount('/static', StaticFiles(directory='static'), name='static')

template_loader = FileSystemLoader(searchpath='template')
env = Environment(loader=template_loader)

@app.get('/', response_class=HTMLResponse)
def root():
    template = env.get_template('index.htmx')
    return template.render(title='This is only a test')
