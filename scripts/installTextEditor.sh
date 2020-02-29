#!/bin/bash
function installTextEditor(){    
    PS3="Select the editors:"
    echo -e "\n"
    select options in vsCode atom sublime ALL EXIT
    do
        case $options in
            vsCode)
                echo -e "\n =============== Installing VSCODE ===============" 
                sudo snap install code --classic ;;
            atom)
                echo -e "\n =============== Installing ATOM ===============" 
                sudo snap install atom --classic ;;
            sublime)
                echo -e "\n =============== Installing SUBLIME ===============" 
                sudo snap install sublime-text --classic ;;
            ALL)
                echo -e "\n =============== Installing SUBLIME ===============" 
                sudo snap install sublime-text --classic
                sudo snap install atom --classic
                sudo snap install code --classic
                break ;;
            EXIT)
                break
                ;;
        esac
    done
}