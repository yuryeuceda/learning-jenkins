#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth remote_user@production_host:/tmp/.auth
scp /pipeline/jenkins/deploy/publish.sh remote_user@production_host:/tmp/publish.sh
ssh remote_user@production_host "/tmp/publish.sh"
#/tmp/publish.sh
