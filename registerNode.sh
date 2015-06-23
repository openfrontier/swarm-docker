#!/bin/bash
set -e

HOST_IP=$1
docker run --name $HOSTNAME -d swarm \
    join \
    --advertise=${HOST_IP}:2375 \
    consul://${HOST_IP}:8500/demo01
