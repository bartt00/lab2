FROM python:3.10-slim

RUN apt-get update && apt-get install -y git && \
    pip install --upgrade pip

WORKDIR /app

COPY app.py /app

RUN pip install flask jupyterlab

CMD ["python", "app.py"]
