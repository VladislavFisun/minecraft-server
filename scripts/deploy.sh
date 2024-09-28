#!/bin/bash

COMPOSE_FILE="docker-compose.yaml"

cd "$(dirname "$0")/../" || exit

git fetch

git pull origin master

echo "Starting deployment..."

docker-compose -f "$COMPOSE_FILE" down

docker-compose -f "$COMPOSE_FILE" up -d

echo "Deployment completed!"

echo 'Directory'

ls