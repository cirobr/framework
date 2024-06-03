# https://docs.docker.com/engine/install/ubuntu/
#!/bin/bash
sudo apt remove docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt autoremove
sudo rm /etc/apt/sources.list.d/docker*
sudo rm /etc/apt/keyrings/docker.*
