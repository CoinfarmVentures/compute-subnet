#!/bin/bash
docker stop $(docker ps -q)
docker rm $(docker ps -a -q)
docker images --format "{{.Repository}}:{{.Tag}}" | grep "^daturaai" | xargs -r docker rmi
