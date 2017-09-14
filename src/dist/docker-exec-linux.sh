#!/usr/bin/env bash

# Runs an exec command on the specified docker container and the specified
#    command as a user with the same permissions as the host machine's
#    permissions
# You can optionally specify additional docker parameters before the
#    docker container name if needed
#
# Examples of usage:
#    ./docker-exec-linux.sh <docker-container-name> bash
#    ./docker-exec-linux.sh <docker-container-name> composer update
#    ./docker-exec-linux.sh --env ENV_VAR=some-thing <docker-container-name> bash
#

docker exec -ti -u $(id -u):$(id -g) "$@"
