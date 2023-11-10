#!/bin/bash

cmd="sudo docker run -d --restart=unless-stopped \
  -p 8080:80 -p 8443:443 \
  -v /opt/rancher:/var/lib/rancher \
  --privileged \
  rancher/rancher"
#  rancher/rancher:latest"
#  -td rancher0""


container_id=$($cmd)

docker rename $container_id rancherprime

docker logs rancherprime 2>&1 | tail -f

./waitforpass.sh
