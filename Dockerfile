# Dockerfile to create a nodejs image with pm2 installed

FROM ubuntu:14.04.3


RUN apt-get update; apt-get -y upgrade

RUN apt-get install -y curl git

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get update

RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

RUN npm install pm2 -g

