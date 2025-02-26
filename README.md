# FastAPI + HTMX Template

A template project for quickly setting up web projects that try to conform to HATEOAS.


FastAPI serves HTML from the backend and HTMX allows for targeted reloading of the application state.

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
