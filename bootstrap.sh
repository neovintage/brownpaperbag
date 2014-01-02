#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install curl
sudo apt-get -y install build-essential checkinstall
sudo apt-get -y install git-core mercurial
sudo apt-get -y install vim

\curl -L https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
rvm install 2.1.0

echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" | sudo tee -a /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgressql-9.3

curl -O http://download.redis.io/redis-stable.tar.gz
tar zxvf redis-stable.tar.gz
cd redis-stable
make
sudo make install
