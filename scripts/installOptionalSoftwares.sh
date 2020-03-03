#!/bin/bash
function downloadOptionalSoftwares(){
    for item in $@; do list+=($item); done

    if [ ${list[0]} = "y" ]; then
        echo -e "\n=================TERMINATOR=================\n"
        sudo apt-get install -y terminator
    fi
    
    if [ ${list[1]} = "y" ]; then
        echo -e "\n=================SPOTIFY=================\n"
        sudo snap install spotify
    fi

    if [ ${list[2]} = "y" ]; then
        echo -e "\n=================POSTMAN=================\n"
        sudo snap install postman
    fi

    if [ ${list[3]} = "y" ]; then
        echo -e "\n=================INSOMINIA=================\n"
        sudo snap install insomnia
    fi

    if [ ${list[4]} = "y" ]; then
        echo -e "\n=================VLC=================\n"
        sudo snap install vlc
    fi
    
    if [ ${list[5]} = "y" ]; then
        echo -e "================qBittorrent================="
        sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
        sudo apt-get update && sudo apt-get install qbittorrent
    fi
}

function installOptionalSoftwares() {
    echo -e "\nAre you want install:"

    read -p "Terminator [y/n]: " -n1 terminator
    [[ $(validation $terminator) = "true" ]] && toInstall+=("y") || toInstall+=("n")
    echo -e ""
    
    read -p "Spotify [y/n]: " -n1 spotify
    [[ $(validation $spotify) = "true" ]] && toInstall+=("y") || toInstall+=("n")
    echo -e ""
    
    read -p "Postman [y/n]: " -n1 postman
    [[ $(validation $postman) = "true" ]] && toInstall+=("y") || toInstall+=("n")
    echo -e ""
    
    read -p "Insomnia [y/n]: " -n1 insomnia
    [[ $(validation $insomnia) = "true" ]] && toInstall+=("y") || toInstall+=("n")
    echo -e ""
    
    read -p "VLC [y/n]: " -n1 vlc
    [[ $(validation $vlc) = "true" ]] && toInstall+=("y") || toInstall+=("n")
    echo -e ""

    read -p "qBittorrent [y/n]: " -n1 qBittorrent
    [[ $(validation $qBittorrent) = "true" ]] && toInstall+=("y") || toInstall+=("n")
    echo -e ""

    downloadOptionalSoftwares ${toInstall[@]}
}