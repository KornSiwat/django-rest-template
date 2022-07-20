FROM python:3.9-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

RUN apk add build-base

RUN apk update && \
    apk add libpq-dev

COPY requirements.txt /code/
RUN pip install -r requirements.txt
