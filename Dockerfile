FROM debian:jessie
MAINTAINER Elliott Thompson

RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install sudo
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get -y install nodejs
RUN mkdir boiler
ADD . boiler
WORKDIR boiler
RUN npm install
RUN node_modules/.bin/webpack
EXPOSE 3000
CMD node server.js
