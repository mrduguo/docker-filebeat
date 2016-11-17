#!/bin/sh
set -e
if [ "$1" = '' ]; then
  filebeat -e -E output.logstash.hosts=localhost:5044 -E shipper.name=$SHIPPER_NAME
else
  exec "$@"
fi

