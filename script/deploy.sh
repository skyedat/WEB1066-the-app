#!/usr/bin/env bash
set -e

bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin ;"
docker pull zutherb/monolithic-shop
docker tag zutherb/monolithic-shop:latest pochadat/monolithic:latest
docker push pochadt/monolithic:latest
