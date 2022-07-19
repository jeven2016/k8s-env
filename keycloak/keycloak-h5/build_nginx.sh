#!/bin/bash

docker build -f Dockerfile ./ -t ui
docker images | grep ui