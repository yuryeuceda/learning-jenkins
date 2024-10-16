#!/bin/bash

# Copy the jar from java-app/target to build location
echo "Copy the jar from java-app/target to build location"
cp -f java-app/target/*.jar jenkins/build

# Set version
export 

echo "*************************************"
echo "*** Building docker image for app ***"
echo "*************************************"
# Lets generate the image of the app
cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
