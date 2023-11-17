# Tasques Part A

## Index
- [HBBQO.sh](#HBBQO.sh)
- [Función Opcio2-1](#Función-Opcio2-1)
- [Función Opcio2-2](#Función-Opcio2-2)
- [Función Opcio2-3](#Función-Opcio2-3)
- [Tasca1-1.sh](#Tasca1-1.sh)
- [Tasca1-2.sh](#Tasca1-2.sh)
- [Tasca1-3.sh](#Tasca1-3.sh)
- [Tasca2-1.sh](#Tasca2-1.sh)
- [Tasca2-2.sh](#Tasca2-2.sh)
- [Tasca2-3.sh](#Tasca2-3.sh)


## HBBQO.sh
```bash
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
```
## Función Opcio2-1
```bash
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
}
```

## Función Opcio2-2
```bash
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
}
```

## Función Opcio2-3
```bash
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
}
```

## Tasca1-1.sh
```bash
#!/bin/bash
sort $1
```

## Tasca1-2.sh
```bash
#!/bin/bash
sort -t',' -n -r -k4 $1
```

## Tasca1-3.sh
```bash
#!/bin/bash
sort -t',' -k5 -n -r $1
```

## Tasca2-1.sh
```bash
#!/bin/bash

sort -t',' -k1 $1 | grep "^[${2}-${3}]" > "output.txt"
if [ `wc -l < output.txt` -eq 0 ]
then
echo "Pel.lícula no trobada"
else
cat output.txt
fi
```

## Tasca2-2.sh
```bash
#!/bin/bash

sort -t',' -k1 $1 | grep "^.*${2}.*,.*,.*,${3}" > "output.txt"
if [ `wc -l < output.txt` -eq 0 ]
then
echo "Pel.lícula no trobada"
else
cat output.txt
fi
```

## Tasca2-3.sh
```bash
#!/bin/bash

sort -t',' -k1 $1 | grep "^.*${3}.*,${2}" > "output.txt"
  if [ `wc -l < output.txt` -eq 0 ]
  then
    echo "Pel.lícula no trobada"
  else
    cat output.txt
  fi
```