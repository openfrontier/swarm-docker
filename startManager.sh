#!/bin/bash
set -e

DISCOVERY_IP=$1
PORT=${2:-9999}
docker run --name swarm-master \
    --restart=unless-stopped \
    -p ${PORT}:2375 \
    -d swarm \
    manage \
    --replication \
    --advertise ${DISCOVERY_IP}:${PORT} \
    etcd://${DISCOVERY_IP}:2379
