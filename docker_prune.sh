#!/bin/bash

## ---------------------------------------------------------------------------------------
## - Script: Docker Prune [Network, Volume, System]
## - DevOps: Renzo Cast | @sosongo
## - Life, the Universe and Everything
## ---------------------------------------------------------------------------------------

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

## - Docker : Network Prune
echo "${RED}## ---------------------------------------------------------------------------------${SET}"
echo "${RED}## - ${YELLOW}[DOCKER] ${SET}: ${GREEN}docker network prune ${BLUE}--force${SET}"
echo "${RED}## ---------------------------------------------------------------------------------${SET}"
docker network prune --force

## - Docker : Volume Prune
echo "${RED}\n## ---------------------------------------------------------------------------------${SET}"
echo "${RED}## - ${YELLOW}[DOCKER] ${SET}: ${GREEN}docker volume prune ${BLUE}--force${SET}"
echo "${RED}## ---------------------------------------------------------------------------------${SET}"
docker volume prune --force

## - Docker : System Prune
echo "${RED}\n## ---------------------------------------------------------------------------------${SET}"
echo "${RED}## - ${YELLOW}[DOCKER] ${SET}: ${GREEN}docker system prune ${BLUE}--force${SET}"
echo "${RED}## ---------------------------------------------------------------------------------${SET}"
docker system prune --all --force --volumes

## - MSJ : Finish
echo "${YELLOW}\nDone!${SET}"