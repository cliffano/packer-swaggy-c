#!/bin/bash
docker --version
source /home/.virtualenvs/py36/bin/activate
make clean deps lint build-docker-swaggy-c
cat logs/packer-docker-swaggy-c.log
echo "${DOCKERHUB_TOKEN}" | docker login --username cliffano --password-stdin
docker inspect cliffano/swaggy-c
make publish-docker-swaggy-c