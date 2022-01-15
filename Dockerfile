FROM python:3.10-alpine
MAINTAINER littlecrazy2life
ENV PYTHONUNBUFFERED 1
copy ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
RUN mkdir /app
copy ./app /app
RUN adduser -D user
USER user
