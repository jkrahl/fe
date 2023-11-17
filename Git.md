# Procedimiento con Git para la práctica de FE Part A
## Importante
Puedes usar como cualquier nombre para la branch default, como **master** o **main**. En este caso se usará **master**.

Cada persona debe poner su branch default como master:
```bash
git config --global init.defaultBranch master
```
Y poner su nombre o NIU:
```bash
git config --global user.name "TU NOMBRE O NIU"
```

## Recomendado
Mirar como funciona Git: https://rogerdudler.github.io/git-guide/
## Opció Menu
Esto debería hacerlo una sola persona para evitar conflictos en Git.

### Persona 1

```bash
git clone https://github.com/FonamentsEnginyeria/part-A-???-??.git
cd part-A-???-??
git checkout -b master
# Hacer cualquier cosa como añadir un punto al README.md
# echo "." >> README.md
git add .
git commit -m "Initial commit"
git push -u origin master
```

Ahora hay que crear OpcioMenu

```bash
git checkout -b OpcioMenu
# Crear el archivo HBBQO.sh con su menú
git add .
git commit -m "OpcioMenu"
git push origin OpcioMenu
```

Antes de hacer el merge hay que añadir algo a master

```bash
git checkout master
# Hacer cualquier cosa como añadir un punto al README.md
# echo "." >> README.md
git add .
git commit -m "Algo en master"
git push origin master
```

Ahora hay que hacer el merge

```bash
git checkout master
git merge OpcioMenu
git push origin master
```

**Opció Menú acabado**

## Opció 1

### Persona 1

Crear un commit de cualquier cosa en master

```bash
git checkout master
# Hacer cualquier cosa como añadir un punto al README.md
# echo "." >> README.md
git add .
git commit -m "Algo en master"
git push origin master
```

Ahora Persona 1 crea la branca Opcio1

```bash
git checkout -b Opcio1
# Añadir el menu de Opcio 1
git add .
git commit -m "Opcio1"
git push origin Opcio1
```

Ahora Persona 1 crea la branca Tasca1-1

```bash
git checkout master
git checkout -b Tasca1-1
# Añadir el script de Tasca1-1
git add .
git commit -m "Tasca1-1"
git push origin Tasca1-1
```

### Persona 2
Debe entrar al último master
```bash
git fetch origin master
git checkout master
git pull origin master
```

Ahora Persona 2 crea la branca Tasca1-2

```bash
git checkout -b Tasca1-2
# Añadir el script de Tasca1-2
git add .
git commit -m "Tasca1-2"
git push origin Tasca1-2
```

### Persona 3
Debe entrar al último master
```bash
git fetch origin master
git checkout master
git pull origin master
```

Ahora Persona 3 crea la branca Tasca1-3

```bash
git checkout -b Tasca1-3
# Añadir el script de Tasca1-3
git add .
git commit -m "Tasca1-3"
git push origin Tasca1-3
```

### Persona 1

Ahora la persona 1 va a crear cualquier commit en master

```bash
git checkout master
# Hacer cualquier cosa como añadir un punto al README.md
# echo "." >> README.md
git add .
git commit -m "Algo en master"
git push origin master
```

Ahora la persona 1 va a hacer el merge de cada tasca a Opcio1

```bash
git checkout Opcio1
git fetch origin Tasca1-1
git merge Tasca1-1
git fetch origin Tasca1-2
git merge Tasca1-2
git fetch origin Tasca1-3
git merge Tasca1-3
git push origin Opcio1
```

Ahora la persona 1 va a hacer el merge de Opcio1 a master

```bash
git checkout master
git fetch origin Opcio1
git merge Opcio1
git push origin master
```

**Opció 1 acabado**

Tu árbol debería ser algo así:

![Árbol](https://x0.at/uzSR.png)


## Opció 2

### Persona 1

Crear un commit de cualquier cosa en master

```bash
git checkout master
# Hacer cualquier cosa como añadir un punto al README.md
# echo "." >> README.md
git add .
git commit -m "Algo en master"
git push origin master
```

Ahora Persona 1 crea la branca Opcio1

```bash
git checkout -b Opcio2
# Añadir el menu de Opcio 2
git add .
git commit -m "Opcio2"
git push origin Opcio2
```

Ahora Persona 1 crea la branca Tasca2-1

```bash
git checkout master
git checkout -b Tasca2-1
# Añadir el script de Tasca2-1
git add .
git commit -m "Tasca2-1"
git push origin Tasca2-1
```

### Persona 2
Debe entrar al último master
```bash
git fetch origin master
git checkout master
git pull origin master
```

Ahora Persona 2 crea la branca Tasca2-2

```bash
git checkout -b Tasca2-2
# Añadir el script de Tasca2-2
git add .
git commit -m "Tasca2-2"
git push origin Tasca2-2
```

### Persona 3
Debe entrar al último master
```bash
git fetch origin master
git checkout master
git pull origin master
```

Ahora Persona 3 crea la branca Tasca2-3

```bash
git checkout -b Tasca2-3
# Añadir el script de Tasca2-3
git add .
git commit -m "Tasca2-3"
git push origin Tasca2-3
```

### Persona 1

Ahora la persona 1 va a crear cualquier commit en master

```bash
git checkout master
# Hacer cualquier cosa como añadir un punto al README.md
# echo "." >> README.md
git add .
git commit -m "Algo en master"
git push origin master
```

Ahora la persona 1 va a hacer el merge de cada tasca a Opcio2

```bash
git checkout Opcio2
git fetch origin Tasca2-1
git merge Tasca2-1
git fetch origin Tasca2-2
git merge Tasca2-2
git fetch origin Tasca2-3
git merge Tasca2-3
git push origin Opcio2
```

Ahora la persona 1 va a hacer el merge de Opcio2 a master

```bash
git checkout master
git fetch origin Opcio2
git merge Opcio2
git push origin master
```

**Opció 2 acabado**
