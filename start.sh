#!/usr/bin/env bash

# quick script to create and run docker image, with db migrations

docker-compose build
docker-compose up -d
sleep 5
docker exec -it questapi_web_1 python3 questAPI/manage.py makemigrations
docker exec -it questapi_web_1 python3 questAPI/manage.py migrate
docker exec -it questapi_web_1 python3 questAPI/manage.py collectstatic


echo "Ready! Navigate to http://localhost:8000"
