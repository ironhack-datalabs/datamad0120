#!/bin/bash

#Imprime en consola Hello World.
echo Hello World

#Crea un directorio nuevo llamado new_dir.
mkdir new_dir

#Elimina ese directorio.
rmdir new_dir

#Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp ./lorem/sed.txt ./lorem-copy/

#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp ./lorem/*.txt ./lorem-copy/

#Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat ../lorem-copy/sed.txt

#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat ../lorem-copy/at.txt ../lorem-copy/lorem.txt

#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -n 3 sed.txt

#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
tail -n 3 sed.txt

#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo Homo homiini lupus. >> sed.txt

#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -n 3 sed.txt

#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed -i 's/et/ET/g' at.txt

#Encuentra al usuario activo en el sistema.
who

#Encuentra dónde estás en tu sistema de ficheros.
pwd

#Lista los archivos que terminan por .txt en la carpeta lorem.
ls *.txt

#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l sed.txt

#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
ls -l -R . | egrep -c 'lorem'

#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
cat at.txt | grep -o et

#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -o et at.txt | wc -l

#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -o et at.txt lorem.txt sed.txt | wc -l

#BONUS

#Almacena en una variable name tu nombre.
name="Eduardo"

#Imprime esa variable.
echo $name

#Crea un directorio nuevo que se llame como el contenido de la variable name.
mkdir $name

#Elimina ese directorio.
rmdir $name

#Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. Intenta primero mostrar los archivos mediante un bucle for
for file in $(ls ./lorem);
do
echo $file has ${#file} characters lenght
done

#Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
top
ps -ef --forest

#Muestra información sobre tu procesador por pantalla
less /proc/cpuinfo

#Crea 3 alias y haz que estén disponibles cada vez que inicias sesión
alias p="pwd"
alias e="exit"
alias c="cd"
#Para que se guarden hay que escribirlos en el archivo ~/.bashrc

#Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz
tar -zcvf lorem-compressed.tar.gz lorem lorem-copy/

#Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed
tar -zxvf lorem-compressed.tar.gz
