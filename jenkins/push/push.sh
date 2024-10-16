#!/bin/bash

echo '*************************'
echo '*** Pushing the tests ***'
echo '*************************'

IMAGE="maven-project"

echo 'Loggin into Docker'
#docker login -u yuryeuceda -p $PASS
echo 'Tagging image'
#docker tag $IMAGE:$BUILD_TAG yuryeuceda/$IMAGE:$BUILD_TAG
echo 'Pushing image'
#docker push yuryeuceda/$IMAGE:$BUILD_TAG