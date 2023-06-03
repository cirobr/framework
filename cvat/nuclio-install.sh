# https://opencv.github.io/cvat/docs/administration/advanced/installation_automatic_annotation/
#!/bin/bash
clear
folder="/home/$USER/github/cvat"
version="1.8.14"

cd $folder
docker compose down


# install nuctl and prepare for installation of autimatic annotation tools
# wget https://github.com/nuclio/nuclio/releases/download/<version>/nuctl-<version>-linux-amd64
wget https://github.com/nuclio/nuclio/releases/download/$version/nuctl-$version-linux-amd64
sudo chmod +x nuctl-$version-linux-amd64
sudo ln -sf $(pwd)/nuctl-$version-linux-amd64 /usr/local/bin/nuctl


### CVAT doesn't see ML models
### https://community.intel.com/t5/Intel-Distribution-of-OpenVINO/CVAT-doesn-t-see-ML-models/m-p/1226043
docker compose -f docker-compose.yml -f components/serverless/docker-compose.serverless.yml up -d


# install auto annotation tools (run on cpu, if no gpu support)
# IMPORTANT: cvat must be installed first
# ./serverless/deploy_cpu.sh serverless/openvino/dextr
# ./serverless/deploy_cpu.sh serverless/openvino/omz/public/yolo-v3-tf

# add gpu support to nuclio
# nuctl deploy --project-name cvat \
#   --path serverless/tensorflow/matterport/mask_rcnn/nuclio \
#   --platform local --base-image tensorflow/tensorflow:1.15.5-gpu-py3 \
#   --desc "GPU based implementation of Mask RCNN on Python 3, Keras, and TensorFlow." \
#   --image cvat/tf.matterport.mask_rcnn_gpu \
#   --triggers '{"myHttpTrigger": {"maxWorkers": 1}}' \
#   --resource-limit nvidia.com/gpu=1
