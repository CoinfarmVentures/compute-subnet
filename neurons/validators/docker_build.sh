#!/bin/bash
set -eux -o pipefail

TAG=local

IMAGE_NAME="CoinfarmVentures/compute-subnet-validator:$TAG"

docker build --build-context datura=../../datura -t $IMAGE_NAME .
