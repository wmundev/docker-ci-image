FROM ghcr.io/linkchecker/linkchecker:latest

WORKDIR /mnt

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install unzip -y
RUN apt-get install curl -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -f awscliv2.zip

ADD script.sh /mnt
RUN chmod 777 /mnt/script.sh

RUN echo $(ls -la /mnt/script.sh)
ENTRYPOINT ["/mnt/script.sh"]
