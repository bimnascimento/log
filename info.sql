
-- links
https://github.com/elastic/stack-docker

-- CONFIG VM
sysctl -w vm.max_map_count=262144

https://hub.docker.com/r/mongoclient/mongoclient
-- docker run -d -p 3000:3000 --network logs_apm mongoclient/mongoclient

https://hub.docker.com/_/mongo-express
-- docker run --network logs_apm -e ME_CONFIG_MONGODB_SERVER=mongodb -p 8081:8081 mongo-express

mongodump --host localhost --port 27017 --db=admin --gzip --archive=admin.gz
mongodump --host localhost --port 27017 --db=config --gzip --archive=config.gz
mongodump --host localhost --port 27017 --db=local --gzip --archive=local.gz
mongodump --host localhost --port 27017 --db=meteor --gzip --archive=meteor.gz


mongodump --host localhost --port 27017 --gzip --archive=/full.gz
docker cp mongodb:/full.gz ./config/graylog/bkp

docker exec -it mongodb /bin/sh mongorestore --host localhost --port 27017 --gzip --archive=/full.gz
docker cp ./config/graylog/bkp/full.gz mongodb:/full.gz

http://localhost:9210/_cat/indices?v&pretty


docker exec mongodb sh -c "ls -la"
docker exec graylog sh -c "ls -la /usr/share/graylog/data/"
docker exec kibana sh -c "ls -la /"
docker exec logstash sh -c "bin/logstash-plugin install logstash-output-gelf"

docker cp graylog:/usr/share/graylog/data/config/graylog.conf ./config/graylog/config/graylog.conf