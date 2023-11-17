#!/bin/bash

sort -t',' -k1 $1 | grep "^.*${3}.*,${2}" > "output.txt"
  if [ `wc -l < output.txt` -eq 0 ]
  then
    echo "Pel.lícula no trobada"
  else
    cat output.txt
  fi