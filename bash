mkdir .temp
clear
printf " \e[96m\e[1m[\e[97m\e[1m+\e[96m\e[1m] \e[32mInput your File Location : \e[33m "
read scloc
echo
echo
printf " \e[96m\e[1m[\e[97m\e[1m+\e[96m\e[1m] \e[32mInput New Name :\e[33m "
read scname
echo
bash-obfuscate $scloc -o .temp/as1
bash-obfuscate .temp/as1 -o .temp/as2
bash-obfuscate .temp/as2 -o .temp/as3
bash-obfuscate .temp/as3 -o .temp/as4
bash-obfuscate .temp/as4 -o .temp/as5
bash-obfuscate .temp/as5 -o .temp/as6
bash-obfuscate .temp/as6 -o .temp/as7
bash-obfuscate .temp/as7 -o .temp/as8
bash-obfuscate .temp/as8 -o .temp/as9
bash-obfuscate .temp/as9 -o .temp/as10
bash-obfuscate .temp/as10 -o .temp/as11
bash-obfuscate .temp/as11 -o .temp/as12
bash-obfuscate .temp/as12 -o .temp/as13
bash-obfuscate .temp/as13 -o .temp/as14
bash-obfuscate .temp/as14 -o .temp/as15
bash-obfuscate .temp/as15 -o .temp/as16
bash-obfuscate .temp/as16 -o .temp/as17
bash-obfuscate .temp/as17 -o .temp/as18
bash-obfuscate .temp/as18 -o .temp/as19
bash-obfuscate .temp/as19 -o .temp/as20
bash-obfuscate .temp/as20 -o .temp/as21
bash-obfuscate .temp/as21 -o .temp/as22
bash-obfuscate .temp/as22 -o .temp/as23
bash-obfuscate .temp/as23 -o .temp/as24
bash-obfuscate .temp/as24 -o .temp/as25
bash-obfuscate .temp/as25 -o .temp/as26
bash-obfuscate .temp/as26 -o .temp/as27
bash-obfuscate .temp/as27 -o .temp/as28
bash-obfuscate .temp/as28 -o .temp/as29
bash-obfuscate .temp/as29 -o .temp/as30
bash-obfuscate .temp/as30 -o .temp/as31
bash-obfuscate .temp/as31 -o .temp/as32
bash-obfuscate .temp/as32 -o .temp/as33
bash-obfuscate .temp/as33 -o .temp/as34
bash-obfuscate .temp/as34 -o .temp/as35
bash-obfuscate .temp/as35 -o .temp/as36
bash-obfuscate .temp/as36 -o .temp/as37
bash-obfuscate .temp/as37 -o .temp/as38
bash-obfuscate .temp/as38 -o .temp/as39
bash-obfuscate .temp/as39 -o .temp/as40
bash-obfuscate .temp/as40 -o .temp/as41
bash-obfuscate .temp/as41 -o .temp/as42
bash-obfuscate .temp/as42 -o .temp/as43
bash-obfuscate .temp/as43 -o .temp/as44
bash-obfuscate .temp/as44 -o .temp/as45
bash-obfuscate .temp/as45 -o .temp/as46
bash-obfuscate .temp/as46 -o .temp/as47
bash-obfuscate .temp/as47 -o .temp/as48
bash-obfuscate .temp/as48 -o .temp/as49
bash-obfuscate .temp/as49 -o .temp/as50
bash-obfuscate .temp/as50 -o $scname
echo " " >> $scname
rm -rf .temp
echo -e " \e[96m\e[1mBash Script \e[32m$scname \e[96m\e[1mhas been Encrypted By \e[33mBASH LOCK \e[96m\e[1mfrom \e[33mHTR-TECH"
echo
echo -e " \e[96m\e[1m[\e[97m\e[1m+\e[96m\e[1m]\e[32m Encrypted File Location :\e[33m $scname"
echo
echo
