#!/bin/bash
clear
mkdir ~/.julia

mkdir ~/.julia/artifacts/
rsync -azP --delete ciro@150.230.89.14:~/.julia/artifacts/ ~/.julia/artifacts
