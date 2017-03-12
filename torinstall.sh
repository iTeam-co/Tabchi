#!/bin/bash
sudo apt-get install -y tor
sudo service tor start
sudo export http_proxy=socks5://127.0.0.1:9050 https_proxy=socks5://127.0.0.1:9050
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN}All Done! Tor Installed And Applied..., Enjoy Your Bots${NC}"
exit
