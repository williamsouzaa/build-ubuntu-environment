#!/bin/bash
installMessageSoftwares(){
    PS3="Select the options:"
    echo -e "\n"
    select options in slack skype discord ALL EXIT
    do
        case $options in
            slack)
                echo -e "\n =============== Installing SLACK ===============" 
                sudo snap install slack --classic
                ;;
            skype)
                echo -e "\n =============== Installing SKYPE ===============" 
                sudo snap install skype --classic
                ;;
            discord)
                echo -e "\n =============== Installing DISCORD ===============" 
                sudo snap install discord
                ;;
            ALL)
                echo -e "\n =============== Installing ALL ===============" 
                sudo snap install slack --classic
                sudo snap install skype --classic
                sudo snap install discord
                break
                ;;
            EXIT)
                break
                ;;
        esac
    done
}