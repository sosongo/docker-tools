# Docker-Tools
Tools for Docker

### docker_prune.sh

- Network Prune

```
docker network prune --force
```

- Volume Prune

```
docker volume prune --force
```

- System Prune

```
docker system prune --all --force --volumes
```

### docker_cleanup.sh


```
docker ps -q | xargs --no-run-if-empty docker stop
docker ps -q -a | xargs --no-run-if-empty docker rm --force --volumes
docker volume ls -q | xargs --no-run-if-empty docker volume rm
docker images -a -q | xargs --no-run-if-empty docker rmi -f
```