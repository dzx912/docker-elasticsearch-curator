#!/bin/sh

set -ex
while true
do
  curator --config /etc/curator/curator.yml /etc/curator/action.yml
  set -e
  sleep $DELAY_SECOND
  set +e
done