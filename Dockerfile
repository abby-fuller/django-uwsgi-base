FROM ubuntu:trusty

MAINTAINER Abby Fuller <abby.fuller@gmail.com>

RUN apt-get update

RUN apt-get install -y git mercurial libjpeg-dev python python-dev python-setuptools python-software-properties
RUN apt-get install -y supervisor software-properties-common libpq-dev libxml2-dev libxslt1-dev

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx

RUN easy_install pip
RUN pip install uwsgi

