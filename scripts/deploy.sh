#!/bin/bash

COMPOSE_FILE="docker-compose.yaml"

cd "$(dirname "$0")/../" || exit

git fetch

git pull

echo "Starting deployment..."

sudo docker-compose -f "$COMPOSE_FILE" down

sudo docker-compose -f "$COMPOSE_FILE" up -d --build

sudo docker-compose -f "$COMPOSE_FILE" logs -f

echo "Deployment completed!"