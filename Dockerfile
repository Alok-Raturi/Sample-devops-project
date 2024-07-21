FROM python:3.9-slim

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y \
    && pip install -r requirement.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 5000


ENTRYPOINT ["python3", "app.py"]
