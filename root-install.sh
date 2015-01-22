#/bin/bash

###############root user#################

#update apt-get
apt-get update
apt-get upgrade
apt-get update

#install tools
apt-get install git
apt-get install lrzsz

#install requirements
apt-get install openssl
apt-get install libssl-dev
apt-get install libxslt1-dev
apt-get install libgd2-xpm-dev
apt-get install libgeoip-dev
apt-get install libxml2-dev
apt-get install curl
apt-get install libcurl4-gnutls-dev
apt-get install libpcre3
apt-get install libpcre3-dev
apt-get install autoconf
apt-get install bison
#加密模块
apt-get install libmcrypt-dev
#邮件服务器
apt-get install sendmail bsd-mailx

#create new user
adduser work
groupadd work

#install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vim/vimrc ~/.vimrc

