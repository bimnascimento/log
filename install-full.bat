@echo off
chmod -R 777 config
docker-compose pull && docker-compose up -d --force-recreate --build
restore-mongo