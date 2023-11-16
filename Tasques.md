# Tasques Part A
## Tasca 1-1
```bash
#!/bin/bash
sort $1
```
## Tasca 1-2
```bash
#!/bin/bash
sort -t',' -n -r -k4 $1
```
## Tasca 1-3
```bash
#!/bin/bash
sort -t',' -k5 -n -r $1
```
## Tasca 2-1
```bash
#!/bin/bash
sort -t',' -k1 $1 | grep "^[$2-$3]"
```
## Tasca 2-2
```bash
#!/bin/bash
sort -t',' -k1 $1 | grep "^${2}.*,.*,.*,${3}"
```
## Tasca 2-3
```bash
#!/bin/bash
valors=$(awk -F',' '{print $2}' "$1" | sort | uniq)
echo -e "$valors"
echo "Introdueix un rating level:"
read level
echo "Introdueix una cadena:"
read str
sort -t',' $1 | grep "^.*${str}.*,${level}"
```