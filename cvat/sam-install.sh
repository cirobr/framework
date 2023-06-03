### https://www.cvat.ai/post/facebook-segment-anything-model-in-cvat
### IMPORTANT: install cvat and nuctl first
#!/bin/bash
folder="/home/$USER/github/cvat"

cd $folder
docker compose down

# cd serverless && ./deploy_gpu.sh pytorch/facebookresearch/sam/nuclio/   # gpu
cd serverless && ./deploy_cpu.sh pytorch/facebookresearch/sam/nuclio/   # cpu

### CVAT doesn't see ML models
### https://community.intel.com/t5/Intel-Distribution-of-OpenVINO/CVAT-doesn-t-see-ML-models/m-p/1226043
docker compose -f docker-compose.yml -f components/serverless/docker-compose.serverless.yml up -d
