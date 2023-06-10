#!/bin/bash
### https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#ubuntu
clear
sudo apt-get update

# remove old keys
sudo apt-key del 7fa2af80


# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/sbsa/cuda-keyring_1.0-1_all.deb
# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/arm64/cuda-keyring_1.0-1_all.deb

sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda
sudo apt-get install nvidia-gds

# # cleanup
rm *.deb

### install cudnn
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-linux
