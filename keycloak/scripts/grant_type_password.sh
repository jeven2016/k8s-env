#!/bin/bash

wrk -t 16 -c 100 -d 30s --latency --timeout 5s -s grant_type_password.lua http://localhost:8080/realms/master/protocol/openid-connect/token