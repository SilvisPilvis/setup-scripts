#!/bin/bash

curl -sSL https://get.docker.com | sh
sleep 2
echo "Installing portainer."
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:linux-arm