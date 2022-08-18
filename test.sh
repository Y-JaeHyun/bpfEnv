#!/bin/bash

##################
##### GO env #####
##################

sudo apt-get update -y
sudo apt-get -y upgrade

#sudo apt-get install openssh-server
#sudo service ssh start
#sudo systemctl enable ssh
sudo apt-get install net-tools

wget https://go.dev/dl/go1.19.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz

mkdir ~/go
echo "export GOPATH=~/go" >> ~/.bashrc
echo "export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin" >> ~/.bashrc

sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install -y vim

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

#:GoInstallBinaries

#cd ~/.vim/bundle
#git clone https://github.com/Valloric/YouCompleteMe.git
#cd YouCompleteMe
#./install.sh

sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
tar -xf Python-3.8.0.tgz
cd Python-3.8.0
./configure --enable-optimizations
make -j 8
sudo make altinstall

#wget https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.6/clang+llvm-14.0.6-aarch64-linux-gnu.tar.xz
#tar -C /usr/local -xvf clang+llvm-14.0.6-aarch64-linux-gnu.tar.xz

sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
sudo apt install -y libc++-15-dev libc++abi-15-dev

######################
#printf "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-12 main" |sudo tee /etc/apt/sources.list.d/llvm-toolchain-xenial-12.list
#wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key |sudo apt-key add -
#sudo apt update
#sudo apt install llvm-12 -y
#sudo apt install clang-12 -y
#sudo apt-get install libllvm-12-ocaml-dev libllvm12 llvm-12 llvm-12-dev llvm-12-doc llvm-12-examples llvm-12-runtime -y


