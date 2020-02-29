#!/bin/bash
echo -e "\n"
read -p "Are you want install Git? [y/n] " -n1 resGit
case $resGit in
    y | Y)
        if [ -e /usr/bin/git ] && git --version ; then
            echo -e "\nGit already exist..."
        else
            sudo apt-get install -y git
        fi;;
    *)
        echo -e "\nNext step...\n";;
esac

read -p "Are you want install docker? [y/n] " -n1 resDocker
case $resDocker in
    y | Y)
        if [ -e /usr/bin/docker ] && docker -v ; then
            echo -e "\nDocker already exist..."
        else
            sudo apt-get install -y docker.io
        fi;;
    *)
        echo -e "\nNext step...\n";;
esac

read -p "Are you want install docker-compose? [y/n] " -n1 resDockerCompose
case $resDockerCompose in
    y | Y)
        if [ -e /usr/local/bin/docker-compose ] && docker-compose -v ; then
            echo -e "\nDocker Compose already exist..."
        else
            sudo apt-get install -y docker-compose
        fi;;
    *)
        echo -e "\nNext step...\n";;
esac


read -p "Are you want install NodeJs? [y/n] " -n1 resNode
case $resNode in
    y | Y)
        if [ -e /usr/bin/node ] && node -v ; then
            echo -e "\nNodeJs already exist..."
        else
            curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
            sudo apt-get install -y nodejs
        fi;;
    *)
        echo -e "\nNext step...\n";;
esac


read -p "Are you want install Yarn? [y/n] " -n1 resYarn
case $resYarn in
    y | Y)
        if [ -e /usr/bin/yarn ] && yarn -v ; then
            echo -e "\nYarn already exist..."
        else
            curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
            echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
            sudo apt update && sudo apt install yarn
        fi;;
    *)
        echo -e "\nFinish";;
esac