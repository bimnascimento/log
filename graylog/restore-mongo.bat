@echo off
REM docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --gzip --archive=/full.gz"

set file=full-2-5
docker cp ./mongodb/%file%.gz mongodb:/%file%.gz 
docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --noIndexRestore --gzip --archive=/%file%.gz"
