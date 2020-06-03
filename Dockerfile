FROM python:3.8-alpine
MAINTAINER Ulaanbaatar App developer

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirments.txt
RUN pip install -r requirments.txt

run mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user