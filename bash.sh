#!/bin/bash


function obfuscate () {
Cesar=$1
sleep 2
	if [ -e $Nombre ]; then
		rm $Nombre
	fi


touch $Nombre
echo "#!/usr/bin/env bash" >> $Nombre
echo "#" >> $Nombre
echo "# Obfuscate by @CesarHackGray" >> $Nombre
echo "# Contacta https://t.me/CesarGray" >> $Nombre
echo "#" >> $Nombre
printf "PIXIE=" >> $Nombre
printf "$" >> $Nombre
printf "(mktemp)\n" >> $Nombre
printf "base64 -d  >$" >> $Nombre
printf "{" >> $Nombre
printf "PIXIE}<<DIXIE\n" >> $Nombre
echo "$(base64 $file)" >> $Nombre
echo "DIXIE" >> $Nombre
printf "source $" >> $Nombre
printf "{" >> $Nombre
printf "PIXIE}\n" >> $Nombre
printf "rm -rf $" >> $Nombre
printf "{" >> $Nombre
printf "PIXIE}" >> $Nombre



}
function verifucar {

	if [ ! -e $file ]; then
		sleep 1
echo
echo "      Error el scritp eleccionado no existe"
echo
sleep 3
help
	fi
}
function help {
sleep 1
echo "Usage: bash-obfuscate <ejemplo.sh> [opcion]"
echo
echo "Opcion:      Created by @CesarHackGray"  
echo "  -o, --Nombre                     Nuevo nombre del scritp"
echo "  -i, --Ruta             Ruta del scritp que quiere ofuscar"
echo "           "
echo "   bash-obfuscate -i RutaDelScritp.sh -o (nuevo nombre.sh) "
echo
echo "Visita mi canal en youtube con el comando"
echo "           bash-obfuscate --visitar --channel"
echo "servicio de ayuda"
echo "            bash-obfuscate --chat --Cesar "
echo
 exit
 }

if [ $# -eq 0 ] || [ ! -z $2 ] || [ ! -z $3 ] || [ ! -z $4 ]; then


case $1 in
	"-i")
		;;
	"--chat")
am start -a android.intent.action.VIEW https://t.me/CesarGray
;;
"--visitar")
am start -a android.intent.action.VIEW https://www.youtube.com/channel/UCjs0N8PbEo-se0r_4O_svNQ
;;
	*)
		help
		;;
esac

case $3 in
	"-o")
		;;
	"--Cesar")
am start -a android.intent.action.VIEW https://t.me/CesarGray
;;
"--channel")
	;;
	*)
	help
		;;
esac


for Nombre in $4
do


for file in $2
do
ls &>> /dev/null
done

verifucar 
obfuscate
done
else
	help
fi
