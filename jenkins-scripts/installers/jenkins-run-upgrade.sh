#!/bin/sh
docker stop jenkins
docker rm jenkins
docker run --name jenkins -d -p 8090:8080 -v $1:/var/jenkins_home:z -t jenkins/jenkins:$2
