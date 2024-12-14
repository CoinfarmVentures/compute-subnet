#!/bin/bash
set -eux -o pipefail
TAG=latest

IMAGE_NAME="daturaai/compute-subnet-validator-runner:$TAG"

docker build --file Dockerfile.runner -t $IMAGE_NAME .
