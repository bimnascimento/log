@echo off
docker cp ./full.gz mongodb:/full.gz 
docker exec mongodb sh -c "mongorestore --host localhost --port 27017 --verbose --gzip --archive=/full.gz"
