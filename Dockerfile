FROM python:3.10-slim
 


RUN mkdir /app
WORKDIR /app

RUN apt-get update
RUN apt-get install -y 

RUN pip install Flask

RUN apt-get clean 
RUN rm -rf /var/lib/apt/lists/*

EXPOSE 5000

COPY . .

ENTRYPOINT ["python3", "app.py"]

