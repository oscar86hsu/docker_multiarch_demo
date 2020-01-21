#!/bin/bash

. demo-magic.sh
clear

# Start Demo
pe "docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t oscar86hsu/multiarch-demo:latest --push ."
# docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t oscar86hsu/multiarch-demo:latest --push .
docker image prune -f

pe "docker buildx imagetools inspect oscar86hsu/multiarch-demo"
# docker run --rm --name=demo --network=dev_network oscar86hsu/multiarch-demo

