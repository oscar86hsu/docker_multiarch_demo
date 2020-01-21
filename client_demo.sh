#!/bin/bash

. demo-magic.sh
clear

# Start Demo
pe "uname -a"

pe "sudo docker pull oscar86hsu/multiarch-demo"
pe "sudo docker run --rm oscar86hsu/multiarch-demo"