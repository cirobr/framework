# https://opencv.github.io/cvat/docs/administration/basics/installation/
#!/bin/bash
clear
folder="/home/$USER/github/cvat"

# IMPORTANT: install docker first
sudo groupadd docker
sudo usermod -aG docker $USER

# clone cvat from github
cd ~/github
git clone https://github.com/opencv/cvat
# git pull

# start cvat for first use
cd $folder
# export CVAT_HOST=192.168.1.120
docker compose up -d
docker exec -it cvat_server bash -ic 'python3 ~/manage.py createsuperuser'
