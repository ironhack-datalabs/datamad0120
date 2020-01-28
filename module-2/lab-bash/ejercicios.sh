#1
echo Hello world

#2
mkdir new_dir

#3
rmdir new_dir

#4
cp lorem/sed.txt lorem-copy/

#5
cp lorem/at.txt lorem-copy/ ; cp lorem/at.txt lorem-copy/

#6
cat lorem/sed.txt

#7
cat lorem/{at.txt,lorem.txt}

#8
head -n 3 lorem-copy/sed.txt
cat lorem-copy/sed.txt | head -n 3

#9
tail -n 3 lorem-copy/sed.txt

#10
head -n 3 lorem-copy/sed.txt

#11 (Nueva línea)
echo -e "Homo homini lupus" >> lorem-copy/sed.txt

#12 (Comprobación #11)
tail -n 3 lorem-copy/sed.txt

#13 
sed 's/et/ET/g' lorem-copy/at.txt

#14
who -u

#1
pwd

#16
ls lorem/*.txt

#17
wc -l lorem/sed.txt

#18 (grep + re)
ls -f | grep -c '^lorem'

#19
grep 'et' lorem/at.txt

#20
grep -c 'et' lorem/at.txt

#21
grep -r 'et' lorem-copy/ | wc -l

#BONUS

name="Irene"
echo $name
mkdir name
rmdir name

for file in $(ls lorem/):
for> echo $file
at.txt
lorem.txt
sed.txt

for file in $(ls lorem/):
${#file}

# ~ format()
for file in $(ls lorem/):
printf "%s has %s characters length\n" "$file" "${#file}"

# compressing 
tar -czvf lorem-compressed.tar.gz lorem/ lorem-copy/


