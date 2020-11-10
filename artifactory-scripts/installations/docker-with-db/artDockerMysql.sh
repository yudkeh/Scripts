#!/bin/bash

if [ -z "$1" ];then

    echo "Please enter Artifactory version."

elif [ -n "$2" ];then

    if [ "$2" == "del" ];then
        docker stop mysql-artifactory-$1
        docker rm mysql-artifactory-$1
        artpath=$ARTENV/mysql-artifactory-$1  ##Setting the home folder in the host. ARTENV coming from env var.
        rm -rf $artpath  ##deleting the home folder
        version=${1//[-._]/}  ##Removing dots from the version number for the Mysql DB name.
        sh ./manageMySQL.sh $version del  ##droping the DB table.
    fi

else

    artpath=$ARTENV/mysql-artifactory-$1  ##Setting the home folder in the host. ARTENV coming from env var.
    mkdir $artpath
    version=${1//[-._]/}  ##Removing dots from the version number for the Mysql DB name.

    #echo "$version"
    #echo "$artpath"

    sh ./manageMySQL.sh $version  ##creating Mysql DB

    FILE=$artpath/db.properties
        if [ -f "$FILE" ];then
            ##db.properties exist
            echo "db.properties already exist"
        else
            ##creating db.proeprties file
            echo "Creating DB properties file."
            echo "type=mysql" >> $FILE
            echo "driver=com.mysql.jdbc.Driver" >> $FILE
            echo "url=jdbc:mysql://host.docker.internal:3306/docker_${version}?characterEncoding=UTF-8&elideSetAutoCommits=true&useSSL=false" >> $FILE
            echo "username=artifactory" >> $FILE
            echo "password=password" >> $FILE
        fi

    docker stop mysql-artifactory-$1
    docker rm mysql-artifactory-$1

    docker run --name mysql-artifactory-$1 -d -v $artpath:/var/opt/jfrog/artifactory -v $artpath/db.properties:/artifactory_extra_conf/db.properties -v /Users/yehudah/envs/artifactory/mysql-connector-java-8.0.16.jar:/opt/jfrog/artifactory/tomcat/lib/mysql-connector-java-8.0.16.jar -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$1

    echo " "
    echo "Artifactory home location is: ${artpath}"
fi