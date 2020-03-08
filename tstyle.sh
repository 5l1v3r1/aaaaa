#!/bin/bash

clear
printf "\e[0m\e[1;32m  _______  \e[0m\e[1;33m  _____ _         _       \e[0m\n"
printf "\e[0m\e[1;32m |__   __| \e[0m\e[1;33m / ____| |       | |      \e[0m\n"
printf "\e[0m\e[1;32m    | |    \e[0m\e[1;33m| (___ | |_ _   _| | ___  \e[0m\n"
printf "\e[0m\e[1;32m    | |    \e[0m\e[1;33m \___ \| __| | | | |/ _ \ \e[0m\n"
printf "\e[0m\e[1;32m    | |    \e[0m\e[1;33m ____) | |_| |_| | |  __/ \e[0m\n"
printf "\e[0m\e[1;32m    |_|    \e[0m\e[1;33m|_____/ \__|\__, |_|\___| \e[0m\n"
printf "\e[0m\e[1;32m           \e[0m\e[1;33m             __/ |        \e[0m\n"
printf "\e[0m\e[1;32m           \e[0m\e[1;33m            |___/         \e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;36m[\e[0m\e[1;37m~\e[0m\e[1;36m]\e[0m\e[1;33m Created by HTR-TECH \e[0m\e[1;36m(\e[0m\e[1;33m Tahmid.Rayat \e[0m\e[1;36m)\n"
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;33m   Installing Packets...\e[0m\n"
if [ ! -d $HOME/.termux ]; then
mkdir $HOME/.termux
fi
sleep 2
printf "\e[0m\n"
printf "\e[0m\e[1;32m   [?] Done [?]\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;33m   Setting Up Environment...\e[0m\n"
tar -xhf core.tar.gz
mv core .core
mv .core/2.sh ~/tstyle/.tstyle.sh
rm core.tar.gz
sleep 2
touch $HOME/.termux/colors.properties
touch $HOME/.termux/font.ttf
termux-reload-settings
printf "\e[0m\n"
printf "\e[0m\e[1;32m   [?] Done [?]\e[0m\n"
cp .core/1 ~/../usr/bin/tstyle
chmod +x ~/../usr/bin/tstyle
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;32m   Installation Succeed !!\e[0m\n"
sleep 2
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;33m   Created By Tahmid Rayat\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;36m   type tstyle to run it\e[0m\n"
printf "\e[0m\n"