@echo off
docker cp ./mongodb/full.gz mongodb:/full.gz 
REM docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --gzip --archive=/full.gz"
docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --noIndexRestore --gzip --archive=/full.gz"
