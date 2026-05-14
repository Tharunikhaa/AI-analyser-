FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml README.md /app/
COPY src /app/src
COPY suites /app/suites
COPY configs /app/configs

RUN pip install --no-cache-dir .

EXPOSE 8000

CMD ["ott-test", "serve", "--host", "0.0.0.0", "--port", "8000"]
