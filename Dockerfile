# Dockerfile to create a nodejs image with pm2 installed

FROM ubuntu:16.04

RUN apt-get update; apt-get -y upgrade

RUN apt-get install -y curl git

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update

RUN apt-get install -y build-essential sudo
RUN apt-get install -y nodejs

RUN npm install pm2 -g

RUN sudo env PATH=$PATH:/usr/local/bin pm2 startup upstart

