#!/bin/bash

COMPOSE_FILE="docker-compose.yaml"

cd "$(dirname "$0")/../" || exit


echo "Starting deployment..."

sudo docker-compose -f "$COMPOSE_FILE" down

sudo docker-compose -f "$COMPOSE_FILE" up -d

echo "Deployment completed!"

echo 'Directory'

ls