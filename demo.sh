#!/bin/bash

. demo-magic.sh
clear

# Start Demo
pe 'mkdir $HOME/.docker && echo {\"experimental\": \"enabled\"} >  $HOME/.docker/config.json'

pe "sudo docker buildx create --name multibuilder"
pe "sudo docker buildx use multibuilder"
pe "sudo docker login"

pe "sudo docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t oscar86hsu/multiarch-demo:latest --push ."
# docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t oscar86hsu/multiarch-demo:latest --push .
sudo docker image prune -f

pe "sudo docker buildx imagetools inspect oscar86hsu/multiarch-demo"
# docker run --rm --name=demo --network=dev_network oscar86hsu/multiarch-demo

