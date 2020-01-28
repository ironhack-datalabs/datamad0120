Ejercicios
- Imprime en consola Hello World.
echo "Hello World"
- Crea un directorio nuevo llamado new_dir.
 mkdir new_dir
- Elimina ese directorio.
rmdir new_dir
- Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp -i lorem/sed.txt lorem-copy
- Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp -i lorem/at.txt lorem-copy; cp -i lorem/lorem.txt lorem-copy
- Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat lorem/sed.txt
- Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat lorem/sed.txt lorem/at.txt lorem/lorem.txt
- Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -n 3 lorem-copy/sed.txt
- Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo Homo homini lupus >> lorem-copy/sed.txt
- Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -n3 lorem-copy/sed.txt
- Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed 's/et/ET/g' lorem-copy/at.txt
- Encuentra al usuario activo en el sistema.
#w
- Encuentra dónde estás en tu sistema de ficheros.
pwd
- Lista los archivos que terminan por .txt en la carpeta lorem.
find lorem/ -name "*.txt"
- Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
cat lorem-copy/sed.txt |wc -l
- Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
ind . -iname "lorem*" -type f |wc -l
- Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
grep "et" lorem/at.txt
Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.

Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.

Ficheros bash
Manual vi: https://www.howtogeek.com/102468/a-beginners-guide-to-editing-text-files-with-vi/

Cualquier comando o comandos de bash se pueden almacenar en un fichero y ejecutar cuando queramos. Obviamente puedes utilizar tu editor preferido. Creamos el fichero:

$ vi list_files.sh
E incluimos el contenido que queramos. En este caso listar ficheros:

#!/bin/bash
ls
Ejecutamos el script:

$ bash list_files.sh
Y veremos por consola el siguiente output.

exercices  inputs  lorem  lorem-copy  modules  outputs  README.md
Bonus
Almacena en una variable name tu nombre.

Imprime esa variable.

Crea un directorio nuevo que se llame como el contenido de la variable name.

Elimina ese directorio.

Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. Intenta primero mostrar los archivos mediante un bucle for

Imprime los ficheros
Imprime las longitudes de los nombres de los ficheros
Imprime outputs con la siguiente estructura: lorem has 5 characters lenght
Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:

Usando el comando top o htop
Usando el comando ps con argumentos
Muestra información sobre tu procesador por pantalla

Crea 3 alias y haz que estén disponibles cada vez que inicias sesión

Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz

Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed