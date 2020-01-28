## Ejercicios

* Imprime en consola `Hello World`.

echo hello world

* Crea un directorio nuevo llamado `new_dir`.

ricardoafonsospinola@Ricardos-MacBook-Air lab-bash % mkdir new_dir  

* Elimina ese directorio.

ricardoafonsospinola@Ricardos-MacBook-Air lab-bash % rm -d -i new_dir

* Copia el archivo `sed.txt` dentro de la carpeta lorem a la carpeta lorem-copy. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem % cp sed.txt ~/datamad0120-1/module-2/lab-bash/lorem-copy

* Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante `;`. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem % cp lorem.txt ~/datamad0120-1/module-2/lab-bash/lorem-copy ; cp at.txt ~/datamad0120-1/module-2/lab-bash/lorem-copy 

* Muestra el contenido del archivo `sed.txt` dentro de la carpeta lorem.

ricardoafonsospinola@Ricardos-MacBook-Air lorem % cat sed.txt

* Muestra el contenido de los archivos `at.txt` y `lorem.txt` dentro de la carpeta lorem. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem % cat at.txt lorem.txt

* Visualiza las primeras 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy 

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % head -3 sed.txt

* Visualiza las ultimas 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy 

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % tail -3 sed.txt

* Añade `Homo homini lupus.` al final de archivo `sed.txt` dentro de la carpeta lorem-copy. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % echo Homo homini lupus. >> ~/datamad0120-1/module-2/lab-bash/lorem-copy/sed.txt

* Visualiza las últimas 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy. Deberías ver ahora `Homo homini lupus.`. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % tail -3 sed.txt

* Sustituye todas las apariciones de `et` por `ET` del archivo `at.txt` dentro de la carpeta lorem-copy. Deberás usar `sed`. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % sed "s/et/ET/g" at.txt 

* Encuentra al usuario activo en el sistema.

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % whoami
ricardoafonsospinola

* Encuentra dónde estás en tu sistema de ficheros.

ricardoafonsospinola@Ricardos-MacBook-Air lorem-copy % pwd
/Users/ricardoafonsospinola/datamad0120-1/module-2/lab-bash/lorem-copy

* Lista los archivos que terminan por `.txt` en la carpeta lorem.

ricardoafonsospinola@Ricardos-MacBook-Air lorem % find ~/datamad0120-1/module-2/lab-bash/lorem -name "*.txt"
/Users/ricardoafonsospinola/datamad0120-1/module-2/lab-bash/lorem/at.txt
/Users/ricardoafonsospinola/datamad0120-1/module-2/lab-bash/lorem/lorem.txt
/Users/ricardoafonsospinola/datamad0120-1/module-2/lab-bash/lorem/sed.txt

* Cuenta el número de líneas que tiene el archivo `sed.txt` dentro de la carpeta lorem. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem % cat sed.txt | wc -l
       8

* Cuenta el número de **archivos** que empiezan por `lorem` que están en este directorio y en directorios internos.

ricardoafonsospinola@Ricardos-MacBook-Air lab-bash % find .  -iname "lorem*" -type f | wc -l
       2

* Encuentra todas las apariciones de `et` en `at.txt` dentro de la carpeta lorem.

ricardoafonsospinola@Ricardos-MacBook-Air lorem % grep "et" at.txt       

* Cuenta el número de apariciones del string `et` en `at.txt` dentro de la carpeta lorem. 

ricardoafonsospinola@Ricardos-MacBook-Air lorem % grep -c "et" at.txt
7

*  Cuenta el número de apariciones del string `et` en todos los archivos del directorio lorem-copy. 



