#!/bin/bash
folder="/home/$USER/github/cvat"

cd $folder
docker compose down
docker stop nuclio-nuclio-pth-facebookresearch-sam-vit-h
docker stop nuclio-local-storage-reader
docker stop nuclio