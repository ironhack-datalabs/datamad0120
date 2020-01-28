echo Hello World
mkdir new_dir
rmdir new_dir
mv sed.txt /Users/fernandocosta/datamad0120/module-2/lab-bash/lorem-copy
mv at.txt /Users/fernandocosta/datamad0120/module-2/lab-bash/lorem-copy; mv lorem.txt /Users/fernandocosta/datamad0120/module-2/lab-bash/lorem-copy
cat sed.txt
cat at.txt ; cat lorem.txt
head -3 sed.txt
echo "Homo homini lupus." >> sed.txt
tail -3 sed.txt
#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
whoami
pwd
#Lista los archivos que terminan por .txt en la carpeta lorem.
find lorem
#Lista los archivos que terminan por .txt en la carpeta lorem.
cat sed.txt | wc -l
#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
grep -r "et" /Users/fernandocosta/datamad0120/module-2/lab-bash/lorem
grep "et" /Users/fernandocosta/datamad0120/module-2/lab-bash/lorem-copy at.txt
grep -r "et" /Users/fernandocosta/datamad0120/module-2/lab-bash/lorem-copy 
