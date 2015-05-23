FROM ubuntu
MAINTAINER Hussein Galal

RUN apt-get update -q && apt-get install -yqq rsyslog python python-pip
RUN pip install beaver
RUN mkdir -p /etc/beaver/conf.d
ADD beaver.conf /etc/beaver/beaver.conf
ADD start_beaver.sh /tmp/start_beaver.sh

ENTRYPOINT beaver -c /etc/beaver/beaver.conf -C /etc/beaver/conf.d
CMD []
