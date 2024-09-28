#!/bin/bash

COMPOSE_FILE="docker-compose.yaml"

git pull

git log
echo "Starting deployment..."

docker-compose -f "$COMPOSE_FILE" down

docker-compose -f "$COMPOSE_FILE" up -d --build

docker-compose -f "$COMPOSE_FILE" logs -f
sleep 10
docker-compose -f "$COMPOSE_FILE" ps
docker-compose -f "$COMPOSE_FILE" logs --tail=100

echo "Deployment completed!"eted!"