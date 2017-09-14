#!/usr/bin/env bash

# Runs an exec command on the specified docker container and the specified
#    command as a user with the same permissions as the host machine's
#    permissions
#
# Examples of usage:
#    ./docker-exec-linux.sh <docker-container-name> bash
#    ./docker-exec-linux.sh <docker-container-name> composer update
#

docker exec -ti -u $(id -u):$(id -g) "$@"
