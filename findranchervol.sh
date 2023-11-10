INSTANCE_ID=rancherprime && docker inspect --format='{{json .Mounts}}' $INSTANCE_ID | jq '.[] | select(.Destination=="/var/lib/rancher").Source' | sed -e 's/\"//g'
