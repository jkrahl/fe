#!/bin/bash
valors=$(awk -F',' '{print $2}' "$1" | sort | uniq)
echo -e "$valors"
echo "Introdueix un rating level:"
read level
echo "Introdueix una cadena:"
read str
sort -t',' $1 | grep "^.*${str}.*,${level}"
