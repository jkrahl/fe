#!/bin/bash
clear

#DECLARACIÓ DE FUNCIONS

En_desenvolupament(){

	clear
	echo "En desenvolupament"
	while [ true ] ; do
		read -t 3 -n 1
		if [ $? = 0 ] ; then
			break
		fi
	done
	clear

}

OpcioNoValida(){

	echo "Error: Opció no existent al menú."
	sleep 2
	clear
}

MostrarMenu(){

	echo "----------------------------------------"
	echo "Base de Dades del catàleg de HBBQO"
	echo "----------------------------------------"
	echo "1. Llistats de les pel.licules del catàleg."
	echo "2. Cerca d'una pel·licula al catàleg."
	echo "3. Joc de preguntes sobre les pel·licules."
	echo "4. Gestió de la base de dades de pel·licules."
	echo "0. Sortir."
}

Mostrar_Menu1(){
	echo "--------------------------------------------------"
	echo "1 - Llistats de les pel·lícules del catàleg."
	echo "--------------------------------------------------"
	echo "1-1 Mostrar catàleg alfabètic."
	echo "1-2 Mostrar catàleg cronològic."
	echo "1-3 Mostrar catàleg per valoració."
	echo "0 Tornar al menú anterior."

}

Mostrar_Menu2(){

	echo "--------------------------------------------------"
	echo "2 - Cerca d'una pel·licula al catàleg"
	echo "--------------------------------------------------"
	echo "2-1 Cercar pel·licules per inici de títol"
	echo "2-2 Cercar pel·licules per títol i any"
	echo "2-3 Cercar pel·licules per "ratinglevel" i títol"
	echo "0 - Tornar al menú anterior"

}


#FI DECLARACIÓ FUNCIONS
opcio=1
opcio1=1
opcio2=1
lines=`wc -l <$1`
fitxer=HBBQO.csv

while [ $opcio -ne 0 ];
do
	MostrarMenu
	echo "Indica opció: "
	read opcio
	
	if [ $opcio -lt 0 ] || [ $opcio -gt 4 ];
	then
		OpcioNoValida
	else
		case $opcio in
			1)clear
                        while [ $opcio1 -ne 0 ];
                        do
                                Mostrar_Menu1
                                echo "Escull una opció"
                                read opcio1
				case $opcio1 in

                                        1)./Tasca1-1.sh $1;;
                                        2)./Tasca1-2.sh $1;;
                                        3)./Tasca1-3.sh $1;;
                                esac
                        done
                        clear
			;;
			2)clear
			while [ $opcio2 -ne 0 ];
			do
				Mostrar_Menu2
				echo "Escull una opció"
				read opcio2

				case $opcio2 in

					1)echo "Cerca de pel·licules per inici del títol"
					  echo "Indica dos caracters: "
					  read char1
					  read char2
					./Tasca2-1.sh $fitxer $char1 $char2;;
					2)clear
					  echo "Cercar pel·lícules per títol i any."
					  echo "Indica una cadena, pulsa Enter, indica un any"
					  read str
					  read any
					  ./Tasca2-2.sh $1 $str $any;;
					3)./Tasca2-3.sh $1 ;;
				esac
			done
			clear		
			;;
			3)En_desenvolupament;;
			4)En_desenvolupament;;
			0)echo "Gràcies per la seva visita a HBBQO";;
	esac
	fi
done
