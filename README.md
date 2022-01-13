# http_healthcheck

### Description

simple internal docker container check via http endpoint (curl wrapper)

append script to image because docker healthcheck test CMD don't use workdir

### install

in Dockerfile, build image with

> COPY ./http_healthcheck /bin/http_healthcheck

### usage

> http_healthcheck http://localhost:3000/healthcheck

check exit code

> echo $?

### in Dockerfile

> HEALTHCHECK CMD http_healthcheck http://localhost/healthcheck

### in docker-compose.yml

`````yml
healthcheck:
  test: [ "CMD", "http_healthcheck", "http://localhost/healthcheck" ]

`````
