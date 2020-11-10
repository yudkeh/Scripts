#!/bin/sh
mkdir /Users/yehudah/envs/artifactory/docker-installations/artifactory-$1
docker stop artifactory-$1
docker rm artifactory-$1
docker run --name artifactory-$1 -d -v /Users/yehudah/envs/artifactory/docker-installations/artifactory-$1:/var/opt/jfrog/artifactory -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$1