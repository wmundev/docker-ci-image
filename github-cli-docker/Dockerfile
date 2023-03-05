# To use gh cli, use `gh`
# To use aws cli, use `aws`
# To use git, use `git`
FROM alpine:3

RUN apk add git

RUN mkdir /app
WORKDIR /app

# Install github cli
RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk add --no-cache github-cli@community

# Install aws cli
RUN apk add --no-cache aws-cli

RUN aws --version # Make sure aws cli is installed correctly
RUN gh # Make sure gh cli is installed correctly

ENTRYPOINT ["/bin/sh", "-c"]
