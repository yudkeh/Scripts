#!/bin/bash

if [ -z "$1" ];then
    echo "No DB name supplied"

elif [ -n "$2" ];then
## droping database of specific version.
    if [ "$2" == "del" ];then
        echo "DROP DATABASE docker_${1};"
        mysql -uroot -proot -e "DROP DATABASE docker_${1};"
    fi

else
## creating database for new instance.
    mysql -uroot -proot -e "CREATE DATABASE docker_${1} CHARACTER SET utf8 COLLATE utf8_bin;"
    mysql -uroot -proot -e "GRANT ALL ON docker_${1}.* TO 'artifactory'@'localhost' IDENTIFIED BY 'password';"
    mysql -uroot -proot -e "FLUSH PRIVILEGES;"
fi