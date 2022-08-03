#!/bin/bash

##################
##### GO env #####
##################

sudo apt-get update -y
sudo apt-get -y upgrade

wget https://go.dev/dl/go1.19.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz



sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install -y vim


mkdir ~/go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin


mkdir ~/.vim
cd ~/.vim
mkdir autoload ; mkdir bundle ;cd autoload
curl -LSso pathogen.vim https://tpo.pe/pathogen.vim


echo "execute pathogen#infect()" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc


cd ~/.vim/bundle
git clone https://github.com/fatih/vim-go.git

sudo apt-get install -y mercurial


sudo apt-get install -y tig

git config --global user.email "wogus3314@gmail.com"
git config --global user.name "Yoo Jae Hyun"
git config --global core.editor "vim"
