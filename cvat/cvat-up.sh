#!/bin/bash
folder="/home/$USER/github/cvat"

cd $folder
docker compose -f docker-compose.yml -f components/serverless/docker-compose.serverless.yml up -d
