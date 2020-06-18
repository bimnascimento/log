@echo off
set file=full-2-5
docker exec mongodb sh -c "mongodump --host localhost --port 27017 --gzip --archive=/%file%.gz"
docker cp mongodb:/%file%.gz ./mongodb/%file%.gz
