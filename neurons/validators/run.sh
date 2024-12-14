#!/bin/sh

python -m debugpy --listen 0.0.0.0:5678 --wait-for-client &

# db migrate
alembic upgrade head

# run fastapi app
python src/validator.py
