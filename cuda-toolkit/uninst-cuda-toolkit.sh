#!/bin/bash
clear
sudo apt remove -y cuda nvidia-gds
sudo apt -y autoremove
sudo dpkg -P cuda-keyring

sudo apt update