#!/bin/bash

#Imprime en consola Hello World.
echo Hello World

#Crea un directorio nuevo llamado new_dir.
mkdir new_dir
#Elimina ese directorio.
rmdir new_dir
#Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp ./lorem/sed.txt ./lorem-copy

#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp ./lorem/* ./lorem-copy

#Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat lorem/sed.txt

#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat lorem/*

#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat lorem-copy/sed.txt | head -3

#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat lorem-copy/sed.txt | tail -3

#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo "Homo homini lupus" >> lorem-copy/sed.txt | tail

#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
cat lorem-copy/sed.txt | tail -3 

#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed -i 's/et/ET' lorem-copy/at.txt

#Encuentra al usuario activo en el sistema.
user / who 

#Encuentra dónde estás en tu sistema de ficheros.
pwc

#Lista los archivos que terminan por .txt en la carpeta lorem.
ls *.txt

#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
cat lorem/sed.txt | wc -l

#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
find . -name "lorem.*" | wc -l 

#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
grep et lorem/at.txt 

#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -o et lorem/at.txt | wc -l

#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -o et lorem/* | wc -l

#Bonus 
#Almacena en una variable name tu nombre.
name = "Elisa"

#Imprime esa variable.
echo $name

#Crea un directorio nuevo que se llame como el contenido de la variable name.Elimina ese directorio.

mkdir $name
rmdir $name

#Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. Intenta primero mostrar los archivos mediante un bucle for

lenght = 0
for i in $(ls lorem); do 
    echo $i
    echo ${#i}
    echo $i has $ characters \lenght ${#i}
done 

#Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
top
ps -ef --forest 

#Muestra información sobre tu procesador por pantalla
grep 'vendor_id' /proc/cpuinfo ; grep 'model name' /proc/cpuinfo ; grep 'cpu MHz' /proc/cpuinfo

#Crea 3 alias y haz que estén disponibles cada vez que inicias sesión
alias e ='echo'
alias l='ls'
alias p= 'pwd'
#para que sea permanente
$ . .bashrc or ~/.bashrc 
#Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz
tar -czfv lorem-compressed.tar.gz lorem lorem-copy

#Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed
tar -xzvf lorem-compressed.tar.gz 
