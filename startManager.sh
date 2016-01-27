#!/bin/bash
set -e

HOST_IP=$1
docker run --name swarm-master \
    --restart=unless-stopped \
    -p 9999:2375 \
    -d swarm \
    manage \
    consul://${HOST_IP}:8500
