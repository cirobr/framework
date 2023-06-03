# install cuda toolkit and nvidia drivers
#!/bin/bash
clear
sudo apt-get update

# remove old keys
sudo apt-key del 7fa2af80

# cuda toolkit base installer
# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_network
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda


# cleanup
rm *.deb
