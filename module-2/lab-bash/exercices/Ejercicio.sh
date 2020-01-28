#La maquina devuelve "Hello World"
echo "Hello World"

#Crear folder
mkdir "new_dir"

#Eliminar folder
rmdir "new_dir"

#Copiar un archivo
cp ./lorem/sed.txt ./lorem-copy

#Copiar varios archivos
cp lorem/{at.txt,lorem.txt} lorem-copy/

#Ver contenido de un archivo
cat ./lorem/sed.txt

#Ver contenido varios archivos
cat lorem/{at.txt,lorem.txt,sed.txt}

#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -3 ./lorem-copy/sed.txt

#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -3 lorem-copy/{at.txt,lorem.txt}

#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
nano ./lorem-copy/sed.txt

#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -3 ./lorem-copy/sed.txt

#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed -n 's/et/TE/gpw ./lorem-copy/sed.txt' ./lorem-copy/at.txt

#Encuentra al usuario activo en el sistema.
id -un

#Encuentra dónde estás en tu sistema de ficheros.
pwd

#Lista los archivos que terminan por .txt en la carpeta lorem.
./lorem | find . -type f -name "*.txt"

#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l ./lorem/sed.txt

#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
find . -type f -name "*.txt" | wc -l ./lorem/{at.txt,lorem.txt,sed.txt}

#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
grep "et" ./lorem/at.txt

#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -c et ./lorem/at.txt

#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -c et lorem-copy/{at.txt,lorem.txt,sed.txt}