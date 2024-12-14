#!/bin/sh

# db migrate
alembic upgrade head

# run fastapi app
python -m debugpy --listen 0.0.0.0:5678 --wait-for-client src/validator.py
