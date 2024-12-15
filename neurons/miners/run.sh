#!/bin/sh

# db migrate
alembic upgrade head

# run fastapi app
python -m debugpy --listen 0.0.0.0:6678 --log-to /tmp/debugpy.log --wait-for-client src/miner.py
