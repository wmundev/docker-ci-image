FROM node:lts-slim

RUN apt-get update -y
RUN apt-get install -y openssh-client git