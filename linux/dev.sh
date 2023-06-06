#!/bin/bash
clear
sudo apt update

# git
sudo apt install git git-lfs

# C
sudo apt install build-essential gdb   # build-essential includes gcc g++ make
sudo apt install mpich                 # OpenMPI

# other programming languages
sudo apt install perl
# sudo apt install gfortran

# text documents
sudo apt install pdftk
# sudo apt install texstudio

### tools
sudo apt install htop

### cleaning
sudo apt autoremove
