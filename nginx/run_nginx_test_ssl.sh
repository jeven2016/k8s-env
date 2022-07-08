#!/bin/bash

#docker run --name nginx_test_1 -d -p 8080:8080  --restart=always \
#     --add-host=keycloak.cloudsec3.zf:127.0.0.1 \
#     nginx_test:latest

#host

docker stop nginx_test_1
docker rm nginx_test_1

docker run --name nginx_test_1 -d \
  -v /home/jujucom/Desktop/workspace/projects/k8s-env/nginx/nginx.conf:/etc/nginx/nginx.conf \
  -v /home/jujucom/Desktop/workspace/projects/k8s-env/nginx/cert/server.crt:/etc/nginx/server.crt \
  -v /home/jujucom/Desktop/workspace/projects/k8s-env/nginx/cert/server.key:/etc/nginx/server.key \
  --network=host  --restart=always \
  --add-host=keycloak.cloudsec3.zf:127.0.0.1 \
  nginx_test:latest