#!/bin/sh
docker stop artifactory
docker rm artifactory
docker run --name artifactory -d -v $1:/var/opt/jfrog/artifactory -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$2
