FROM python:2.7

WORKDIR /srv/python_proj

COPY upidev_lib /srv/upidev_lib

RUN apt-get update
RUN apt-get install -y python-setuptools


RUN cd /srv/upidev_lib/ && pip install .
RUN cd /srv/python_proj/ && pip install -r requirements.txt

COPY python_proj /srv/python_proj

ENV http_proxy localhost:8465
ENV https_proxy localhost:8465
