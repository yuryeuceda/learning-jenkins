#!/bin/bash
echo "Setting IMAGE"
export IMAGE=$(sed -n '1p' auth)
echo "Setting BUILD_TAG"
export BUILD_TAG=$(sed -n '2p' auth)
echo "Setting PASS"
export PASS=$(sed -n '3p' auth)
echo "Login into dockerhub"
#docker login -u yuryeuceda -p $PASS
#echo "$PASS" | docker login --username yuryeuceda --password-stdin
#echo "$PASS" | docker login -u 'yuryeuceda' --password-stdin
docker login -u yuryeuceda -p "$PASS"
echo "Composing"
docker-compose up -d
