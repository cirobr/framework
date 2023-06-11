#!/bin/bash
clear

# get architecture
if [ "$(uname -m)" = "x86_64" ]; then
    arch="x86_64"
    echo $arch
elif [ "$(uname -m)" = "aarch64" ]; then
    arch="arm64"
    echo $arch
else
    echo "wrong arch"
    exit 1
fi

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-$(uname)-$arch.sh
bash ./Miniconda3-latest-$(uname)-$arch.sh
