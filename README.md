# To build
docker login --username=wilsonm

docker build .

docker images - to get the image id

docker tag {imageId} wilsonm/node-ci

docker push wilsonm/node-ci