#!/bin/bash

docker stop $HOSTNAME
docker rm -v $HOSTNAME
