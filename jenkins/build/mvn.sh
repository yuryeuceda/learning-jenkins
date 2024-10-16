#!/bin/bash
echo "*********************"
echo "*** Building JAR ****"
echo "*********************"

docker run -i --rm -v $PWD/java-app:/app -v /root/.m2 -w /app maven:3-alpine "$@"