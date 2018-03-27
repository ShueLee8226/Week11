#!/bin/bash

clear
echo "Let start of by checking which file is opening now"
lsof -i
sleep 1

echo "Now let try to scan a web link"
read -p "Enter a website that you want to scan  " website
nmap $website
sleep 4

echo "let check the Unix Domain"
sleep 2
lsof -U | head
lsof -U | tail
sleep 5

clear
echo "This is optional, Do you want to check the SSH service"
echo "IF YOU CHOOSE YES YOU ARE INSTALL THE SSH SERVER"
echo "1. Yes contiune and install"
echo "2. Don't install"
read agree

if [[ $agree == 1 ]]; then
   echo "you choose to install SSH server"
   sudo apt-get install openssh-server
   echo "Now let view the SSH status"
   sleep 3
   sudo service ssh status
elif [[ $agree == 2 ]]; then
   echo "you choose not to install SSH"
   echo "The script end here"
else
   echo "Enter 1 or 2 for your option"
   echo "Rerun the script to view the other option"
fi
