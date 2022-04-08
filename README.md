# To build

For wilsonm/node-ci
```
export REPOSITORY_NAME=wilsonm/node-ci
docker login --username=wilsonm
docker build --tag ${REPOSITORY_NAME}:latest -f node-ci/Dockerfile .
docker push ${REPOSITORY_NAME}

```

For wilsonm/github-cli
```
export REPOSITORY_NAME=wilsonm/github-cli
docker login --username=wilsonm
docker build --tag ${REPOSITORY_NAME}:latest -f github-cli-docker/Dockerfile .
docker push ${REPOSITORY_NAME}

```
