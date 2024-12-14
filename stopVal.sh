#!/bin/bash

pm2 stop dbg_sn51val
pm2 del dbg_sn51val
cd /bittensor/compute-subnet/neurons/validators
docker compose down
docker stop validator-db-1 -t 1
docker stop validator-connector-1 -t 1
docker stop validator-redis-1 -t 1
cd /bittensor
