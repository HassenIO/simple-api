FROM python:3.9-slim-buster

WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY main.py .

CMD uvicorn --host 0.0.0.0 --port 8081 main:app

