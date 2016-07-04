FROM debian:jessie
MAINTAINER Elliott Thompson

RUN apt-get -y update
RUN apt-get -y install node
RUN apt-get -y install npm
RUN mkdir boiler
ADD https://github.com/ellt92/boiler /boiler
RUN cd /boiler
RUN npm install
RUN node node_modules/.bin/webpack
RUN node server.js
