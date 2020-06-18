@echo off
REM cmd /c "cd mongodb & restore-mongo"

chmod -R 777 .
docker-compose pull && docker-compose up -d --force-recreate --build
restore-mongo