#!/bin/bash
# Almacena en una variable name tu nombre.
name=jose

# Imprime esa variable.
echo $name

# Crea un directorio nuevo que se llame como el contenido de la variable name.
mkdir $name

# Elimina ese directorio.
rmdir $name

# Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. Intenta primero mostrar los archivos mediante un bucle for
ruta=/home/jmpchamizo/Repositorios/datamad0120/module-2/lab-bash/lorem/
#	Imprime los ficheros
for i in /home/jmpchamizo/Repositorios/datamad0120/module-2/lab-bash/lorem/*
do
    echo ${i//$ruta} 
done
#        Imprime las longitudes de los nombres de los ficheros
for i in /home/jmpchamizo/Repositorios/datamad0120/module-2/lab-bash/lorem/*
do
    f=${i//$ruta}
    fi=${f//.txt}
    echo ${#fi}
done
#        Imprime outputs con la siguiente estructura: lorem has 5 characters lenght
for i in /home/jmpchamizo/Repositorios/datamad0120/module-2/lab-bash/lorem/*
do
    f=${i//$ruta}
    fi=${f//.txt}
    echo Lorem has ${#fi} characters length
done
#
#    Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
#        Usando el comando top o htop
#            top (pulsamos V mientras se ejecuta)
#        Usando el comando ps con argumentos
#            ps axjf
#
#    Muestra información sobre tu procesador por pantalla
#        lscpu
#    Crea 3 alias y haz que estén disponibles cada vez que inicias sesión
#        vim ~/.bashrc
#    editamos y con:
#        alias lli='ls -l'
#        alias llorem='ls lorem/'
#        alias lloremcopy='ls lorem/copy'

#    Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz
#        tar -czvf lorem-compressed.tar.gz lorem/ lorem-copy/
#    Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed
#        mkdir lorem-uncompressed
#        tar -xzvf lorem-compressed.tar.gz -C lorem-uncompressed 
#
