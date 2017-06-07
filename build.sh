#!/bin/sh
docker ps -a | grep bsarda/supervisor | awk '{print $1}' | xargs -n1 docker rm -f
docker rmi bsarda/supervisor
docker build -t bsarda/supervisor .
