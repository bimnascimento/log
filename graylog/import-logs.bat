@echo off
REM docker exec logstash sh -c "bin/logstash-plugin install logstash-output-gelf && logstash -f /etc/logstash/conf.d/logstash.conf"
docker exec logstash sh -c "logstash -f /usr/share/logstash/config/logstash.conf"
REM docker restart logstash