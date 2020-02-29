#!/bin/bash

function createFolder() {
    echo -e "\n \n(default value is: \"Projects\")"
    read -p "Are you want set name folder? [y/n] " -n1 setName
    if [ $(validation $setName) = "true" ]; then
        echo ""
        read -p "Set name: " nameFolder
        mkdir /home/$USER/$nameFolder
        echo -e "\n"
    else
        mkdir /home/$USER/Projects
        echo -e "\n"
    fi
}