#!/bin/bash

cd /bittensor/compute-subnet/neurons/validators
pm2 start --name dbg_sn51val "docker compose up"
cd /bittensor
