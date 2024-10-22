#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth remote_user@production_host:auth
scp ./jenkins/deploy/publish.sh remote_user@production_host:publish.sh
scp ./jenkins/maven/docker-compose.yml remote_user@production_host:docker-compose.yml
ssh remote_user@production_host "cd ~ && ./publish.sh"

#/tmp/publish.sh
#docker login -u yuryeuceda -p $PASS
#cd /pipeline/jenkins/maven && docker-compose up -d
