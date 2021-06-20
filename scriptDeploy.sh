#!/bin/bash
if [ $1 == "--dev" ]; then
    echo "Iniciando dev. Desconstruindo containers"
    docker-compose down
    echo "Construindo containers de desenvolvimento"
    docker-compose up -d --build
fi
if [ $1 == "--prod" ]; then
    echo "Iniciando prod. Desconstruindo containers"
    docker-compose -f docker-compose-prod.yml down
    echo "Construindo containers de desenvolvimento"
    docker-compose -f docker-compose-prod.yml up -d --build
fi