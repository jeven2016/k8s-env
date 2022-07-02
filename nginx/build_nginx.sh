#!/bin/bash

docker build -f Dockerfile ./ -t nginx_test
docker images | grep nginx_test