@echo off
docker cp ./bkp/full.gz mongodb:/full.gz 
REM --noIndexRestore --verbose --drop
REM https://docs.mongodb.com/manual/reference/program/mongorestore/
docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --gzip --archive=/full.gz"
