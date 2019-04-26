#!/bin/bash

## --------------------------------------------------------------------------
## - Script: Docker Cleanup [Containers, Volume, Images]
## - DevOps: Renzo Cast | @sosongo
## - Life, the Universe and Everything
## --------------------------------------------------------------------------

## - Clear Screen
clear

## - Colors
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTPURPLE='\033[1;35m'
LIGHTRED='\033[1;31m'
WHITE='\033[1;37m'
DARKGRAY='\033[1;30m'
SET='\033[0m'

## - Docker : Cleanup
echo "${RED}## --------------------------------------------------------------------------${SET}"
echo "${RED}## - ${YELLOW}[DOCKER] ${SET}: ${GREEN}Cleanup Docker, Volumes and Images${SET}"
echo "${RED}## --------------------------------------------------------------------------${SET}"

docker ps -q | xargs --no-run-if-empty docker stop
docker ps -q -a | xargs --no-run-if-empty docker rm --force --volumes
docker volume ls -q | xargs --no-run-if-empty docker volume rm
docker images -a -q | xargs --no-run-if-empty docker rmi -f

## - MSJ : Finish
echo "${YELLOW}\nDone!${SET}"