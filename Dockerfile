FROM ubuntu
MAINTAINER Hussein Galal

RUN apt-get update -q && apt-get install -yqq rsyslog python python-pip
RUN pip install beaver
RUN mkdir -p /etc/beaver/conf.d
ADD beaver.conf /etc/beaver/beaver.conf

ENTRYPOINT beaver -c /etc/beaver/beaver.conf -C /etc/beaver/conf.d
CMD []
