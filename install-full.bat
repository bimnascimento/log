@echo off
docker-compose pull && docker-compose up -d --force-recreate --build
chmod -R 777 config