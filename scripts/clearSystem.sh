#!/bin/bash
function clearSystem(){
    echo -e "\n=======================CLEAN======================="
    sudo apt-get clean
    sudo apt-get autoclean
    sudo apt-get autoremove --purge
}