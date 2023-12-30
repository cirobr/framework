#!/bin/bash
clear
sudo apt update
sudo apt install pkg-config libhdf5-dev cmake

conda create -n tf python numpy tensorflow keras matplotlib pandas scikit-learn ipykernel
conda create -n tfgpu python numpy tensorflow-gpu keras matplotlib pandas scikit-learn ipykernel
