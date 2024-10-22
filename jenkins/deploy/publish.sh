#!/bin/bash

export IMAGE=$(sed -n '1p' auth)
export TAG=$(sed -n '2p' auth)
export PASS=$(sed -n '3p' auth)

#docker login -u yuryeuceda -p $PASS
echo "$PASS" | docker login --username yuryeuceda --password-stdin
docker-compose up -d
