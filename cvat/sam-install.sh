### https://www.cvat.ai/post/facebook-segment-anything-model-in-cvat
### IMPORTANT: install cvat and nuctl first
#!/bin/bash

cd ~/github/cvat
# cd serverless && ./deploy_gpu.sh pytorch/facebookresearch/sam/nuclio/   # gpu
cd serverless && ./deploy_cpu.sh pytorch/facebookresearch/sam/nuclio/   # cpu