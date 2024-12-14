#!/bin/bash

pm2 stop dbg_sn51val
pm2 del dbg_sn51val
cd /bittensor/compute-subnet/neurons/validators
docker compose down
docker stop validator-validator-1 -t 1
cd /bittensor
