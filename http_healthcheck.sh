#!/bin/sh
##### https://github.com/antirek/http_healthcheck.sh

RESPONSE=$(curl --silent --retry 3 --output /dev/null --write-out '%{http_code}' $1)

if [ ${RESPONSE} = 200 ]; then
  exit 0
else
  exit 1
fi