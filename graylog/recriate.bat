@echo off
docker-compose down --volumes
chmod -R 777 .
docker-compose pull && docker-compose up -d --force-recreate --build
set file=full-2-5
docker cp ./mongodb/%file%.gz mongodb:/%file%.gz 
docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --noIndexRestore --gzip --archive=/%file%.gz"
docker logs -f logstash-graylog