Imprime en consola Hello World.
echo Hello World


Crea un directorio nuevo llamado new_dir.
mkdir new_dir


Elimina ese directorio.
rm -rf new_dir


Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp sed.txt ../lorem-copy/


Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copycat <<'EOF' >> sed.txt
 en una sola línea mediante ;
cp at.txt ../lorem-copy/; cp lorem.txt ../lorem-copy/


Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat sed.txt 


Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat at.txt; cat lorem.txt 


Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -3 sed.txt 


Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
tail -3 sed.txt 


Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
cat <<'EOF' >> sed.txt


Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -3 sed.txt


Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed 's/et/ET/' at.txt


Encuentra al usuario activo en el sistema.
echo $USER


Encuentra dónde estás en tu sistema de ficheros.
pwd


Lista los archivos que terminan por .txt en la carpeta lorem.
ls | grep .txt


Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l sed.txt


Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
ls | grep lorem | wc -l


Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
cat at.txt | grep 'et'


Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
cat at.txt | grep -o 'et' | wc -l


Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
cat at.txt | grep -o 'et' | wc -l; cat sed.txt | grep -o 'et' | wc -l; cat lorem.txt | grep -o 'et' | wc -l



























