#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth remote_user@production_host:/tmp/.auth
scp ./jenkins/deploy/publish.sh remote_user@production_host:~/publish.sh
ssh remote_user@production_host "sh ~/publish.sh"
#/tmp/publish.sh

#docker login -u yuryeuceda -p $PASS
#cd /pipeline/jenkins/maven && docker-compose up -d
