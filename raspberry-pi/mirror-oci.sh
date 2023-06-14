#!/bin/bash
clear
rsync -azP --delete ciro@150.230.89.14:~/.julia/ ~/.julia
rsync -azP --delete ciro@150.230.89.14:~/juliaenvs/ ~/juliaenvs
rsync -azP --delete ciro@150.230.89.14:~/juliasysimages/ ~/juliasysimages

cd projects/pesquisa/
git pull

