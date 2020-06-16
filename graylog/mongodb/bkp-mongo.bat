@echo off
docker exec mongodb sh -c "mongodump --host localhost --port 27017 --gzip --archive=/full.gz"
docker cp mongodb:/full.gz ./full.gz