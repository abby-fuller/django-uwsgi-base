FROM ubuntu:trusty

MAINTAINER Abby Fuller <abby.fuller@gmail.com>

RUN add-apt-repository -y ppa:nginx/stable && apt-get update


RUN apt-get install -y git mercurial \
                          libjpeg-dev \
                          python \
                          python-dev \
                          python-setuptools  \
                          python-software-properties \
                          supervisor \
                          software-properties-common \
                          libpq-dev \
                          libxml2-dev \
                          libxslt1-dev \
                          nginx \
                          libgeos-dev

RUN apt-get clean autoclean && apt-get autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN easy_install pip && pip install uwsgi
