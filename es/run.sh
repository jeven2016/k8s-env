#!/bin/bash

#kubectl apply -f all-in-one.yaml

#sleep 3

#kubectl apply -f elastic-pv.yml   #动态持久卷已经生效，不需要应用

sleep 3 

kubectl apply -f elastic-cluster.yml



