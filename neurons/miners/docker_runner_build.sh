#!/bin/bash
set -eux -o pipefail
TAG=local

IMAGE_NAME="CoinfarmVentures/compute-subnet-miner-runner:$TAG"

docker build --file Dockerfile.runner -t $IMAGE_NAME .
