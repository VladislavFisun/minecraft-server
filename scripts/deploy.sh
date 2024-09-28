#!/bin/bash

COMPOSE_FILE="docker-compose.yaml"

cd "$(dirname "$0")/../" || exit

echo "Starting deployment..."

docker-compose -f "$COMPOSE_FILE" down

docker-compose -f "$COMPOSE_FILE" up -d --build

docker-compose -f "$COMPOSE_FILE" logs -f

echo "Deployment completed!"