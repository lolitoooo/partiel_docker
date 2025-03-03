#!/bin/bash

# Lancer tous les conteneurs Docker sauf le frontend
cd "$(dirname "$0")"
docker compose up -d --scale frontend=0

# Lancer le frontend
cd frontend
npm run dev &

# Exécuter le script init-products.sh
cd ../scripts
./init-products.sh

# Retourner au répertoire de départ
cd ..
