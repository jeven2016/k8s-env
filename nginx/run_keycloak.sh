#!/bin/bash
docker stop keycloak
docker rm -v keycloak

docker run -d \
  --name keycloak \
  -e KEYCLOAK_ADMIN=admin \
  -e KEYCLOAK_ADMIN_PASSWORD=admin \
  -e KC_HTTPS_CERTIFICATE_FILE=/opt/keycloak/conf/server.crt.pem \
  -e KC_HTTPS_CERTIFICATE_KEY_FILE=/opt/keycloak/conf/server.key.pem \
  -v /home/jujucom/Desktop/workspace/projects/k8s-env/nginx/cert/server.crt.pem:/opt/keycloak/conf/server.crt.pem \
  -v /home/jujucom/Desktop/workspace/projects/k8s-env/nginx/cert/server.key.pem:/opt/keycloak/conf/server.key.pem \
  -p 8443:8443 \
  quay.io/keycloak/keycloak:latest \
  start-dev