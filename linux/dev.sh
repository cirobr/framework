#!/bin/bash
clear
sudo apt update

# git
sudo apt install git git-lfs

# C
sudo apt install build-essential gdb   # build-essential includes gcc g++ make
sudo apt install mpich                 # OpenMPI

# R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt update
sudo apt install r-base r-base-dev

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
