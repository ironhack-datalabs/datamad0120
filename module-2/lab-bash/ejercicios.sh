echo "Hello World"

mkdir new_dir

rmdir new_dir

cp lorem/sed.txt lorem-copy/sed.txt

cp lorem/{at.txt,lorem.txt} lorem-copy/

cat lorem/sed.txt

cat lorem/at.txt lorem/lorem.txt

head -n3 lorem-copy/sed.txt

tail -n3 lorem-copy/sed.txt

echo "Homo homini lupus." >> lorem-copy/sed.txt

tail -n3 lorem-copy/sed.txt

sed 's/et/ET/g' lorem-copy/at.txt

whoami

pwd

ls lorem/*.txt

wc -l lorem/sed.txt

find . -type f -name "lorem*" | wc -l

grep -r "et" lorem/at.txt

grep -c "et" lorem/at.txt

grep -r "et" lorem-copy/ | wc -l





name="Sergio-Gomis-Melero"

echo $name

mkdir $name

rmdir $name


top
ps -l

cpu-info

alias gs="git status"
alias tarc="tar -cvzf"
alias tarx="tar -xzvf"

tar -cvzf lorem-compressed.tar.gz lorem/ lorem-copy/

mkdir lorem-uncompressed
tar -xzvf lorem-compressed.tar.gz -C lorem-uncompressed/