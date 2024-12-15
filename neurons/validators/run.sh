#!/bin/sh

# db migrate
alembic upgrade head

# run fastapi app
python -m debugpy --listen 0.0.0.0:5678 --log-to /tmp/debugpy.log --wait-for-client src/validator.py
