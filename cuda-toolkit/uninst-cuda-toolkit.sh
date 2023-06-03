#!/bin/bash
clear
sudo apt remove -y cuda
sudo apt -y autoremove
sudo dpkg -P cuda-keyring

sudo apt update