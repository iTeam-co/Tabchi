#!/usr/bin/env bash
wget "https://valtman.name/files/telegram-cli-1222"
sudo apt-get install ppa-purge
sudo apt-get install python-pip
sudo pip instal redis
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo ppa-purge
chmod 777 create.py
chmod 777 run.py
chmod 777 telegram-cli-1222
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN}Installation Completed! Create a bot with ./create.py ${NC}"
exit
