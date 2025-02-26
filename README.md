# FastAPI + HTMX Template

A template project for quickly setting up web projects that try to conform to [HATEOAS](https://en.wikipedia.org/wiki/HATEOAS).


[FastAPI](https://fastapi.tiangolo.com/) serves HTML from the backend and [HTMX](https://htmx.org) allows for targeted reloading of the application state.
[Jinja](https://jinja.palletsprojects.com/en/stable/) templates with the flexibility of HTMX allows for the creative and efficient design of many kinds of web applications.

# Setup

Use a virtualenv or don't, i'm not the police.

```bash
$ # install python dependencies
$ make python
$ # install htmx
$ make htmx
```

# Run

```bash
$ # testing
$ fastapi dev app.py
$ # production
# fastapi run app.py --host 0.0.0.0 --port 80
```
