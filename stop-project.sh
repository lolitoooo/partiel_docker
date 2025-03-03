#!/bin/bash

# Arrêter tous les conteneurs Docker
cd "$(dirname "$0")"
docker compose down

# Trouver et tuer le processus npm run dev
pkill -f "npm run dev"
