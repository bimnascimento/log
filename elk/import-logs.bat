@echo off
docker exec logstash sh -c "bin/logstash-plugin install logstash-output-gelf && logstash -f /etc/logstash/conf.d/logstash.conf"