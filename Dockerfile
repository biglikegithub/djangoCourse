FROM python:3.8-alpine
MAINTAINER Ulaanbaatar App developer

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirments.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
	gcc libc-dev linux-headers postgresql-dev
RUN pip install -r requirments.txt
RUN apk del .tmp-build-deps

run mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
