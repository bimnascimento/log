@echo off
chmod -R 777 .
docker-compose pull && docker-compose up -d --force-recreate --build