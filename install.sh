#!/usr/bin/env bash
wget "https://valtman.name/files/telegram-cli-1222"
sudo apt-get install ppa-purge
sudo apt-get install python-pip
sudo pip install redis
sudo servoce redis-server restart
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo ppa-purge
chmod 777 creator.py
chmod 777 run.sh
chmod 777 telegram-cli-1222
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN}Installation Completed! Create a bot with ./creator.py ${NC}"
exit
