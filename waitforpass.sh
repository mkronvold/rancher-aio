#!/bin/bash

pass=

while [ "$pass" == "" ]; do
  pass=$(docker logs rancherprime 2>&1 | grep "Bootstrap Password:")
done

IPADDR=$(curl -s -f --connect-timeout 3 https://icanhazip.com) || IPADDR=$(wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//')
echo https://${IPADDR}:8443
echo $pass
