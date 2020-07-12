# To build
docker login --username=wilsonm

docker build .

docker images - to get the image id

docker tag {imageId} wilsonm/did:aws

docker push wilsonm/did:aws
