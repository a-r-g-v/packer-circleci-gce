#!/bin/bash

# openresty
sudo wget https://github.com/cubicdaiya/nginx-build/releases/download/v0.9.10/nginx-build-linux-amd64-0.9.10.tar.gz
sudo tar zxvf nginx-build-linux-amd64-0.9.10.tar.gz
sudo apt-get install -y make gcc libluajit-5.1-2 luajit g++
export PATH=$PATH:/sbin
sudo ./nginx-build  -openresty -pcre -openssl -zlib -d work
cd work/openresty/1.11.2.1/openresty-1.11.2.1
sudo make install
sudo mkdir -p /etc/nginx
sudo mv /tmp/nginx.service /etc/systemd/system/nginx.service
sudo apt-get purge -y make gcc g++

