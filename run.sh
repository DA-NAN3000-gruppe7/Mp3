#!/bin/bash

# checking if root is running
if [ "$EUID" -ne 0 ]
  then echo "Server must be run as root. Use 'sudo ./run.sh' next time"
  exit
fi

# assings path to current directory and to init.sh
ROTFS=$PWD

# starting docker containers
sudo adduser dockremapper # Oppretter bruker
sudo dockerd --userns-remap=default & # remapper bruker
##
## Dette starter docker med dockermap user og group opprettes og mappes mot ikke-priviligerte uid og gid - "ranges" i /etc/subuid og /etc/subgid - filene.
##

# Starter docker service
systemctl start docker.service
docker login

# Henter image
docker pull hkulterud/dockerhub:g7mp3_image

# Create containers
docker container run -d --cap-drop=setfcap --cpu-shares 512 -m 512m -it -p 8000:80 --name REST_API hkulterud/dockerhub:g7mp3_image
docker container run -d --cap-drop=setfcap --cpu-shares 512 -m 512m -it -p 8080:80 --name WEB_INTERFACE hkulterud/dockerhub:g7mp3_image
## 
## Containere kjører med 512 cpu-shares og limit på 512MB ram, samt dropper capabilities setfcap
##