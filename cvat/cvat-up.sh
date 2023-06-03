#!/bin/bash
folder="/home/$USER/github/cvat"

cd $folder
### CVAT doesn't see ML models
### https://community.intel.com/t5/Intel-Distribution-of-OpenVINO/CVAT-doesn-t-see-ML-models/m-p/1226043
# docker compose up -d
docker compose -f docker-compose.yml -f components/serverless/docker-compose.serverless.yml up -d
