#!/bin/bash

blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'

clear

myip=`shodan myip`

echo -e "$red"
echo -e " _______  __   __  _______  ______   _______  __    _ "
echo -e "|       ||  | |  ||       ||      | |   _   ||  |  | |"
echo -e "|  _____||  |_|  ||   _   ||  _    ||  |_|  ||   |_| |"
echo -e "| |_____ |       ||  | |  || | |   ||       ||       |"
echo -e "|_____  ||       ||  |_|  || |_|   ||       ||  _    |"
echo -e " _____| ||   _   ||       ||       ||   _   || | |   |"
echo -e "|_______||__| |__||_______||______| |__| |__||_|  |__|"
echo -e "$white"
echo -e "               Your IP :$okegreen $myip"
echo -e "$white"
echo -e "$yellow  [1]$okegreen==----==$red[$white Scan IPs, Hostnames, ports"
echo -e "$yellow  [2]$okegreen==----==$red[$white Scan Specific Host"
echo -e "$white"
echo -e ""
read -p "  ~ Select : " act;
if [ $act == '1' ]
then
    read -p "  ~ Search : " target;
    shodan search --fields ip_str,port,hostnames $target
elif [ $act == '2' ]
then
    read -p "  ~ IP : " target;
    shodan host $target
fi
