#!/bin/bash
set -e

DISCOVERY_IP=$1
docker run --name swarm-master \
    --restart=unless-stopped \
    -p 9999:2375 \
    -d swarm \
    manage \
    etcd://${DISCOVERY_IP}:2379
