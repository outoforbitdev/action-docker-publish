#!/bin/sh -l

git config --global --add safe.directory "${GITHUB_WORKSPACE:=.}"

user=$1
token=$2
tag="$3:$4"
sha=$(git rev-parse --short HEAD)
sha_tag="$tag--$sha"

echo "tag=$tag" >> $GITHUB_OUTPUT
echo "sha-tag=$sha_tag" >> $GITHUB_OUTPUT

docker login -u $user -p $token
docker build -t $tag .
docker build -t $sha_tag .
docker image push $tag
docker image push $sha_tag
