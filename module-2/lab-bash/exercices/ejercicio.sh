· Imprime en consola Hello World.
	echo hello world

· Crea un directorio nuevo llamado new_dir.
	mkdir new_dir

· Elimina ese directorio.
	rmdir new_dir

· Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
	cp lorem/sed.txt lorem-copy 

· Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
	cp -a lorem/. lorem-copy/ 
	cp lorem/at.txt lorem-copy; cp lorem/lorem.txt lorem-copy 

· Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
	cat lorem/sed.txt

· Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
	cat lorem/at.txt; cat lorem/lorem.txt 

· Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
	head -3 lorem-copy/sed.txt 

· Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
	tail -3 lorem-copy/sed.txt 

· Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
	echo Homo homini lupus >> lorem-copy/sed.txt 

· Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
	tail -3 lorem-copy/sed.txt
		Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, 
		nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, 
		vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?Homo homini lupus

· Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
	 sed -i 's/et/ET/g' lorem-copy/at.txt 

· Encuentra al usuario activo en el sistema.
	who

· Encuentra dónde estás en tu sistema de ficheros.
	pwd

· Lista los archivos que terminan por .txt en la carpeta lorem.
	ls lorem | grep  '\.txt$'

· Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
	cat lorem/sed.txt | wc -l

· Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
	ls -R | grep '^lorem' | wc -l

· Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
	grep -o et lorem/at.txt
	grep -o -i et lorem/at.txt (ignore-case)

· Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
	grep -o et lorem/at.txt | wc -l
	grep -o -i et lorem/at.txt | wc -l

· Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
	grep -R -o et lorem-copy | wc -l  
	grep -R -o -i et lorem-copy | wc -l  
