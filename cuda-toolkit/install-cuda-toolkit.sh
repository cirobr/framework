#!/bin/bash
### https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#ubuntu
clear
sudo apt update

# get distribution
distro="ubuntu2204"

# get architecture
if [ "$(uname -m)" = "x86_64" ]; then
    arch="x86_64"
elif [ "$(uname -m)" = "aarch64" ]; then
    arch="sbsa"
else
    echo "wrong arch"
    exit 1
fi

# remove old keys
sudo apt-key del 7fa2af80

# install new keys
wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb

# install cuda toolkit
sudo apt update
sudo apt -y install cuda
sudo apt -y install nvidia-gds

# cleanup
rm *.deb

### install cudnn
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-linux
