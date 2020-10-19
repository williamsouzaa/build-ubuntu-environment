#!/bin/bash

source ./configSourceList.sh

function installBasicSoftwaresAndUpdateSystem() {
	echo -e "\nWe need your password to update and install new packages..."
    configSourceList
    sudo apt-get update && sudo apt-get upgrade

    echo -e "Install SNAP\n"; 
	sudo apt install -y snapd

    echo -e "Installing curl\n";
    sudo apt-get install -y curl
    
    echo "Installing ubuntu softwares"
	sudo add-apt-repository ppa:lubuntu-desktop/ppa
    sudo apt-get update
    sudo apt-get install lubuntu-software-center
    sudo apt-get install gnome-shell
    sudo apt-get install compiz-plugins compizconfig-settings-manager
}