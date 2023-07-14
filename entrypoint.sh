#!/bin/sh -l

git config --global --add safe.directory "${GITHUB_WORKSPACE:=.}"

docker login -u $1 -p $2
docker build -t $3:$4 .
docker image push $3:$4

npx semantic-release
