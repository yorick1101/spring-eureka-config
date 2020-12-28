#! /bin/bash
host_url=`hostname -I| xargs`
eureka_port=8761
docker run --name config -e HOST_URL=$host_url -e EUREKA_URL=$host_url -e EUREKA_PORT=$eureka_port -d -p 9999:9999  hauchung/spring-config-eureka:2.3.7
