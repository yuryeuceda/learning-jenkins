#!/bin/bash

export IMAGE=$(sed -n '1p' .auth)
export TAG=$(sed -n '2p' .auth)
export PASS=$(sed -n '3p' .auth)

docker login -u yuryeuceda -p $PASS
docker-compose up -d
