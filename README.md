# http_healthcheck.sh

### Description

simple internal docker container check via http endpoint

### usage

> ./http_healthcheck.sh http://localhost:3000/healthcheck

check exit code

> echo $?

### in Dockerfile

> HEALTHCHECK CMD ./http_healthcheck.sh http://localhost:3000/healthcheck

### in docker-compose.yml

`````yml
healthcheck:
  test: [ "CMD", "./http_healthcheck.sh", "http://localhost:3000/healthcheck" ]

`````
