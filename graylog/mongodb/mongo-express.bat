@echo off
docker run -it --rm ^
    --network logs_apm ^
    --name mongo-express ^
    -p 8081:8081 ^
    -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" ^
    -e ME_CONFIG_MONGODB_SERVER="mongodb" ^
    -e ME_CONFIG_BASICAUTH_USERNAME="" ^
    -e ME_CONFIG_BASICAUTH_PASSWORD="" ^
    -e ME_CONFIG_MONGODB_ENABLE_ADMIN="true" ^
    -e ME_CONFIG_MONGODB_ADMINUSERNAME="admin" ^
    -e ME_CONFIG_MONGODB_ADMINPASSWORD="admin" ^
    -e ME_CONFIG_MONGODB_PORT="27017" ^
    mongo-express