#!/bin/bash

wget "https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz"

# x- extract z-gzip f-file
sudo tar -xzf "go1.13.1.linux-amd64.tar.gz" -C "/usr/bin"

GOPATH="/usr/bin/go"
export PATH=$PATH:$GOPATH/bin
sudo apt -y update
sudo apt -y install gcc
sudo apt -y install make
sudo apt -y install git
git clone git://github.com/ipfs/go-ipfs.git
cd go-ipfs
make install


