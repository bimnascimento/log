@echo off
docker run -it --rm ^
    --network logs_apm ^
    --name mongo-client ^
    -p 3000:3000 ^
    mongoclient/mongoclient