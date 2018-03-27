#!/bin/bash

clear
echo "Welcome to chapter 9 script"
echo "This chapter will be talking about network and it configuration"
sleep 2

echo "let look at your IP address"
ifconfig
sleep 3

echo "Now let look at the keranl routing table"
route -n
sleep 2

clear
echo "Website IP adress can be found by using the host command"
echo "Enter a website name you want to look at it IP adress"
read -p "your website has to began with www and end with .com .org .net etc  " link
host $link
sleep 3
echo "Now let ping google Ip address"
read -p "Enter the IP adress you see  " address
ping -c 4 $address

echo "Let check your connection and your IP table"
sleep 2
netstat -ntl
netstat -t
sudo iptables -L
sleep 4

echo "Let map the Ip address to MAC address"
arp -n
sleep 2

clear
echo "let view the kernel psace device and network configuration"
iw phy | head
iw phy | tail
