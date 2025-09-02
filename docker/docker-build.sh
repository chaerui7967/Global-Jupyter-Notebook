#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PARENT_DIR="$( dirname "${SCRIPT_DIR}")"

IMAGE="jupyter-notebook"
IMAGE_TAG=":0.0.1"

if [ $# -eq 1 ]; then
    IMAGE=$1
elif [ $# -gt 1 ]; then
    IMAGE=$1
    IMAGE_TAG=$2
fi

DOCKER_IMAGE="$IMAGE$IMAGE_TAG"

echo $DOCKER_IMAGE

docker build --no-cache -t "$DOCKER_IMAGE" -f "$SCRIPT_DIR"/Dockerfile "$PARENT_DIR"
