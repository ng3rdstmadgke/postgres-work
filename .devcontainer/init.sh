#!/bin/bash

mkdir -p ~/.ssh
mkdir -p ~/.aws
mkdir -p ~/.claude
[ ! -f ~/.claude.json ] && echo '{}' > ~/.claude.json
mkdir -p ~/.gemini
mkdir -p ~/.postgres-work/.kube
mkdir -p ~/.postgres-work/.config/helm

DOCKER_NETWORK=br-postgres-work-${USER}
NETWORK_EXISTS=$(docker network ls --filter name=$DOCKER_NETWORK --format '{{.Name}}')

if [ -z "$NETWORK_EXISTS" ]; then
  docker network create $DOCKER_NETWORK
fi