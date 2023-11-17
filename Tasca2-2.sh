#!/bin/bash

sort -t',' -k1 $1 | grep "^.*${2}.*,.*,.*,${3}" > "output.txt"
if [ `wc -l < output.txt` -eq 0 ]
then
echo "Pel.lícula no trobada"
else
cat output.txt
fi