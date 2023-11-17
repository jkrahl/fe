#!/bin/bash
clear

En_desenvolupament() {

  echo "En desenvolupament"
  sleep 2
  clear
}

OpcioNoValida() {

  echo "Error: Opció no existent al menú."
  sleep 2
  clear
}

MostrarMenu() {

  echo "----------------------------------------"
  echo "Base de Dades del catàleg de HBBQO"
  echo "----------------------------------------"
  echo "1. Llistats de les pel.licules del catàleg."
  echo "2. Cerca d'una pel·licula al catàleg."
  echo "3. Joc de preguntes sobre les pel·licules."
  echo "4. Gestió de la base de dades de pel·licules."
  echo "0. Sortir."
}

Mostrar_Menu1() {
  echo "--------------------------------------------------"
  echo "1 - Llistats de les pel·lícules del catàleg."
  echo "--------------------------------------------------"
  echo "1-1 Mostrar catàleg alfabètic."
  echo "1-2 Mostrar catàleg cronològic."
  echo "1-3 Mostrar catàleg per valoració."
  echo "0 Tornar al menú anterior."

}

Mostrar_Menu2() {

  echo "--------------------------------------------------"
  echo "2 - Cerca d'una pel·licula al catàleg"
  echo "--------------------------------------------------"
  echo "2-1 Cercar pel·licules per inici de títol"
  echo "2-2 Cercar pel·licules per títol i any"
  echo "2-3 Cercar pel·licules per "ratinglevel" i títol"
  echo "0 - Tornar al menú anterior"

}

Opcio2-1() {
  opcio21=1
  c1='a'
  c2='z'
  while [ $opcio21 -ne 0 ]; do
    echo "Introdueix el rang de lletres de la pel.lícula"
    read c1
    read c2
    ./Tasca2-1.sh $1 $c1 $c2
    rm output.txt
    echo "Introdueix 1 per cercar, 0 per sortir"
    read opcio21
  done
  clear
}

Opcio2-2() {
  opcio22=1
  str='a'
  any=2023
  while [ $opcio22 -ne 0 ]; do
    echo "Introdueix una cadena i un any"
    read str
    read any
    ./Tasca2-2.sh $1 $str $any
    rm output.txt
    echo "Introdueix 1 per cercar, 0 per sortir"
    read opcio22
  done
  clear
}

Opcio2-3(){
  valors=$(awk -F',' '{print $2}' "$1" | sort | uniq)
  echo -e "$valors"
  opcio23=1
  level=R
  c1='a'
  any=2023
  while [ $opcio23 -ne 0 ]
  do
    echo "Introdueix un rating level:"
    read level
    echo "Introdueix una cadena:"
    read str
    ./Tasca2-3.sh $1 $level $str
    rm output.txt
    echo "Introdueix 1 per cercar, 0 per sortir"
    read opcio23
  done
  clear
}

#FI DECLARACIÓ FUNCIONS
opcio=1
opcio1=1
opcio2=1
while [ $opcio -ne 0 ]; do
  MostrarMenu
  read opcio
  case $opcio in
  1)
    clear
    while [ $opcio1 -ne 0 ]; do
      Mostrar_Menu1
      read opcio1
      case $opcio1 in
      1) ./Tasca1-1.sh $1 ;;
      2) ./Tasca1-2.sh $1 ;;
      3) ./Tasca1-3.sh $1 ;;
      0) clear;;
      *) OpcioNoValida ;;
      esac
    done
    clear
    ;;
  2)
    clear
    while [ $opcio2 -ne 0 ]; do
      Mostrar_Menu2
      read opcio2
      case $opcio2 in
      1) Opcio2-1 $1;;
      2) Opcio2-2 $1;;
      3) Opcio2-3 $1;;
      0) clear;;
      *) OpcioNoValida ;;
      esac
    done
    clear
    ;;
  3) En_desenvolupament ;;
  4) En_desenvolupament ;;
  0) echo "Gràcies per la seva visita a HBBQO" ;;
  *) OpcioNoValida ;;
  esac
done

