#!usr/bin/env python

echo 'Hello World'

mkdir new_dir

rmdir new_dir

cp lorem/sed.txt lorem-copy 

cp lorem/at.txt lorem/lorem.txt lorem-copy

cat lorem/sed.txt

cat lorem/at.txt lorem/lorem.txt     

head -n3 lorem-copy/sed.txt

tail -n3 lorem-copy/sed.txt

echo 'Homo homini lupus.' >> lorem-copy/sed.txt

tail -n3 lorem-copy/sed.txt 

sed -i 's/et/ET/g' "lorem-copy/at.txt" 

whoami

pwd

find *.txt

cat sed.txt | wc -l

find . -iname "lorem*" -type f | wc -l

grep "et" at.txt 

grep -o et at.txt | wc -l

grep -o et ./lorem-copy/* | wc -l





