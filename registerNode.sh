#!/bin/bash
set -e

HOST_IP=$1
HOST_PORT=${2:-2375}
docker run --name swarm \
    --restart=unless-stopped \
    -d swarm \
    join \
    --advertise=${HOST_IP}:${HOST_PORT} \
    etcd://${HOST_IP}:2379
