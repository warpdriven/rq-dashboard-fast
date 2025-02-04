FROM --platform=linux/amd64 python:3.11-slim-buster AS build

ENV POETRYVERSION=1.8.3 POETRY_VIRTUALENVS_CREATE=false PYTHONPATH=/app

RUN pip install poetry==${POETRYVERSION} --no-cache-dir

COPY pyproject.toml README.md ./
RUN poetry install --no-interaction --no-ansi --without dev

RUN pip install pytest --no-cache-dir

COPY ./rq_dashboard_fast /app/rq_dashboard_fast
COPY app.py /app

WORKDIR /app
CMD ["python", "app.py"]