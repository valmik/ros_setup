#!/bin/bash

# https://askubuntu.com/questions/79280/how-to-install-chrome-browser-properly-via-command-line


echo "****************************** Installing Google Chrome"
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb