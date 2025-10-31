#!/bin/bash
# 
# Author: Manel Guerra
# Date: January 2023
# Last revised 31/10/2025
#
# Makes a copy of a list of directories in a path (see copydirs_lst.txt)
#
# Usage: copydirs (or ./copydirs.sh)
#
########################

# definicio directori a crear 
DIR_BACKUP="$(date +%Y%m%d)"

# presentacio i lectura de configuracio

echo
echo "copydirs (2024 Manel Guerra)"
echo

read -rd '' desti llista_dirs < copydirs_lst.txt

echo "... ruta de destí on es farà la còpia: [$desti]"
echo "... carpeta que es crearà: [$DIR_BACKUP]"

# comprovacio de l'estructura de carpetes
if [ ! -d "$desti" ]
then
	# no s'ha posat carpeta de desti
	echo "... no es troba la ruta on desar dades: comproveu que és accessible o existeix."
	echo
else
	if [ ! -d "$DIR_BACKUP" ]
	then
		echo "... creació de carpeta de destí: $DIR_BACKUP"
		mkdir "$DIR_BACKUP"
	fi

	# comença transmissió de fitxers
	echo "... inici de copia:"
	
	for i in $llista_dirs
		do
			echo "       - copiant ~/$i"
		 	rsync -arz ~/$i "$desti/$DIR_BACKUP"
		done

	echo "Còpia feta el $(date +%d/%m/%Y) a les $(date +%H:%M)" > "$desti/$DIR_BACKUP/info_copia.txt"
	echo "... còpia feta."
	echo
fi

