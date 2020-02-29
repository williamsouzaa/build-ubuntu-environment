#!/bin/bash
source ./validation.sh

source ./scripts/installBasicSoftwares.sh
source ./scripts/installTextEditor.sh
source ./scripts/installMessageSoftwares.sh
source ./scripts/installOptionalSoftwares.sh
source ./scripts/configGitTerminal.sh
source ./scripts/createFolder.sh
source ./scripts/clearSystem.sh
source ./continueMessage.sh

declare userName=`whoami`

read -p "Hello $userName. Do you want continue? [y/n] " -n1 continue 
if [ $(validation $continue) = "false" ]; then
	echo -e "\nThanks... :)"
	exit 0;
fi
echo ""

installBasicSoftwaresAndUpdateSystem

read -p "Are you want install a text editor? [n/y] " -n1 textEditor
[[ $(validation $textEditor) = "true" ]] && installTextEditor || continueMessage "messageSoftware\n"
    
read -p "Are you want install a message software? [n/y] " -n1 messageSoftware 
[[ $(validation $messageSoftware) = "true" ]] && installMessageSoftwares || continueMessage "MoreSoftwares\n"
    
read -p "Show more options of softwares[y/n] " -n1 optionalSoftwares
[[ $(validation $optionalSoftwares) = "true" ]] && installOptionalSoftwares || continueMessage "DevSoftwares\n"

read -p "Are you want install softwares for developers[y/n] " -n1 devSoftwares
if [ $(validation $devSoftwares) = "true" ]; then 
	source ./scripts/installDevSoftwares.sh
else
	continueMessage
fi

echo -e "\n"
read -p "Are you want create a folder for personal projects? [y/n] " -n1 resFolder
[[ $(validation $resFolder) = "true" ]] && createFolder

echo -e "\n"
read -p "Are you want config git in terminal? [y/n] " -n1 configGit
[[ $(validation $configGit) = "true" ]] && configGitTerminal

clearSystem
