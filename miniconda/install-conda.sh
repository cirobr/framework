#!/bin/bash
### https://repo.anaconda.com/miniconda/
clear

# get architecture
if [ "$(uname -m)" = "x86_64" ]; then
    arch="x86_64"
elif [ "$(uname -m)" = "aarch64" ]; then
    arch="arm64"
else
    echo "wrong arch"
    exit 1
fi

echo $arch

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-$(uname)-$arch.sh
bash ./Miniconda3-latest-$(uname)-$arch.sh
