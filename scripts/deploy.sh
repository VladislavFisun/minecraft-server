#!/bin/bash

COMPOSE_FILE="docker-compose.yaml"

cd "$(dirname "$0")/../" || exit

git fetch

git pull

git log

echo "Starting deployment..."

sudo docker-compose -f "$COMPOSE_FILE" down

sudo docker-compose -f "$COMPOSE_FILE" up -d --build

sleep 10

sudo docker-compose -f "$COMPOSE_FILE" ps

sudo docker-compose -f "$COMPOSE_FILE" logs --tail=100

echo "Deployment completed!"