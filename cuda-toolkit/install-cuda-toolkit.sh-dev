#!/bin/bash
### https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#ubuntu
clear
# sudo apt-get update

# remove old keys
# sudo apt-key del 7fa2af80

# cuda toolkit base installer
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_network
# x86_64
if [ $1="x86_64" ]; then
    # wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
    echo "opt 1"
# aarch64-sbsa
elif [ $1="sbsa" ]; then
    # wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/sbsa/cuda-keyring_1.0-1_all.deb
    echo "opt 2"
# # aarch64-jetson
# elif [ $1=="jetson" ]; then
#     wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/arm64/cuda-keyring_1.0-1_all.deb
# wrong argument
else
    echo "wrong argument. must be x86_64, sbsa or jetson."
    exit 1
fi

# sudo dpkg -i cuda-keyring_1.0-1_all.deb
# sudo apt-get update
# sudo apt-get -y install cuda
# sudo apt-get install nvidia-gds

# # cleanup
# rm *.deb

### install cudnn
# https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-linux
