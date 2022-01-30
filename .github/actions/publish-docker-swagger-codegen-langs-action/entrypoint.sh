#!/bin/bash
docker --version
source /home/.virtualenvs/py36/bin/activate
make clean deps lint build-docker-swagger-codegen-langs
cat logs/packer-docker-swagger-codegen-langs.log
echo "${DOCKERHUB_TOKEN}" | docker login --username cliffano --password-stdin
docker inspect cliffano/swagger-codegen-langs
make publish-docker-swagger-codegen-langs