# syntax = docker/dockerfile:experimental

FROM python:3.10

RUN mkdir /app

WORKDIR /app

ADD . /app/

ENV GOOGLE_APPLICATION_CREDENTIALS=test-b0857-2bd1243ce849.json

RUN pip install -r requirements.txt

RUN dvc pull

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

CMD ["python", "/app/hello.py"]