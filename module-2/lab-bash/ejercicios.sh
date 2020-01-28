Ejercicios



Imprime en consola Hello World.
echo Hello World

Crea un directorio nuevo llamado new_dir.
mkdir new_dir

Elimina ese directorio.
rm -d -i new_dir

Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp sed.txt ~/datamad0120/module-2/lab-bash/lorem-copy

Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp at.txt  ~/datamad0120/module-2/lab-bash/lorem-copy; cp lorem.txt ~/datamad0120/module-2/lab-bash/lorem-copy

Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat sed.txt

Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat at.txt lorem.txt

Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -3 sed.txt

Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
tail -3 sed.txt

Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo Homo homini lupus >> sed.txt

Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -3 sed.txt

Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed -i "s/et/ET/g" at.txt

Encuentra al usuario activo en el sistema.
whoami

Encuentra dónde estás en tu sistema de ficheros.
pwd

Lista los archivos que terminan por .txt en la carpeta lorem.
find ~/datamad0120/module-2/lab-bash/lorem -name "*.txt"

Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l sed.txt

Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
find . -name "lorem*" -type f | wc -l

Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
grep et at.txt 

Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -o et at.txt | wc -l

Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -o et ./lorem-copy/* | wc -l



