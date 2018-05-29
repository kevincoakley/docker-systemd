#!/bin/sh

DOCKER_OUTPUT=`docker exec -i -t ubuntu18.04-systemd ps aux | grep init`

echo $DOCKER_OUTPUT

if [[ $DOCKER_OUTPUT == *"/sbin/init"* ]];
then
    exit 0;
else
    exit 1;
fi
