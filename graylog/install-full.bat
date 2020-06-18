@echo off
REM cmd /c "cd mongodb & restore-mongo"
REM ----------------------------------
chmod -R 777 .
docker-compose pull && docker-compose up -d --force-recreate --build
chmod -R 777 .
restore-mongo