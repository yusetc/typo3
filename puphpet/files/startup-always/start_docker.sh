#!/usr/bin/env bash
cd /var/www/docker

docker-compose stop

docker-compose up -d

docker exec -w /var/www/api docker_typo3_api_1 composer update