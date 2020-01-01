#!/usr/bin/env bash
CONTAINERNAME=$(cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c 16)
CONTAINERSOURCE="quay.io/rebeccajae/guestbuilder"
echo "Building runtime container $CONTAINERNAME from $CONTAINERSOURCE"
docker run --name "$CONTAINERNAME" -d -i -t "$CONTAINERSOURCE" bash
docker cp guest-build.sh "$CONTAINERNAME":/home/builduser/guest-build.sh
docker exec -it "$CONTAINERNAME" bash guest-build.sh
docker cp "$CONTAINERNAME":/home/builduser/bionic-server-cloudimg-amd64.vmdk bionic-server-cloudimg-amd64.vmdk
docker stop "$CONTAINERNAME"
docker rm "$CONTAINERNAME"
