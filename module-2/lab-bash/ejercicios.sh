#Resolución:

#1 Print hello world
echo Hello World

#2 Crear directorio: mkdir
mkdir new_dir

#3 Eliminar el directorio: rmdir
rmdir new_dir

#4 Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp lorem/sed.txt lorem-copy

#5 Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp -i lorem/*.txt lorem-copy

#6 Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat sed.txt

#7 Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat lorem/at.txt lorem/lorem.txt

#8 Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -n3 lorem-copy/sed.txt

#9 Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
tail -n3 lorem-copy/sed.txt

#10 Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo "Homo homini lupus" >> lorem-copy/sed.txt

#11 Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -n3 lorem-copy/sed.txt

#12 Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
cd lorem-copy
sed 's/et/ET/g' at.txt
# NO SÉ POR QUÉ NO FUNCIONA: sed 's/et/ET/g' lorem-copy/at.txt

#13 Encuentra al usuario activo en el sistema.
whoami

#14 Encuentra dónde estás en tu sistema de ficheros.
pwd

#15 Lista los archivos que terminan por .txt en la carpeta lorem.
ls lorem/*.txt

#16 Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l lorem/sed.txt

#17 Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
find . -iname "lorem*" -type f | wc -l

#18 Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
cd lorem
grep -o et at.txt | wc -l

#19 Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -o "\set\s" lorem/at.txt | wc -l
grep -w -o et lorem/at.txt | wc -l 

#20 Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -w et lorem-copy/*.txt | wc -l