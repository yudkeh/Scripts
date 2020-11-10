#!/bin/sh
mkdir $(pwd)/"home"
x=$(pwd)"/home"
export JENKINS_HOME=$x
echo "This is the Jenkins home: $JENKINS_HOME"
echo "Starting Jenkins"
java -jar jenkins.war --httpPort=8080
