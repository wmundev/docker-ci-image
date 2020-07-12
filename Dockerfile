FROM node:lts-slim

RUN apt-get update -y
RUN apt-get install -y openssh-client git curl unzip

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -rf awscliv2.zip
RUN rm -rf aws
