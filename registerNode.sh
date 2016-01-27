#!/bin/bash
set -e

HOST_IP=$1
HOST_PORT=$2
docker run --name swarm \
    --restart=unless-stopped \
    -d swarm \
    join \
    --advertise=${HOST_IP}:${HOST_PORT} \
    consul://${HOST_IP}:8500
