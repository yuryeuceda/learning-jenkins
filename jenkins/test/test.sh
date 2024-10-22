#!/bin/bash

echo '*************************'
echo '*** Running the tests ***'
echo '*************************'

#docker run -it --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn test
docker run -i --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
