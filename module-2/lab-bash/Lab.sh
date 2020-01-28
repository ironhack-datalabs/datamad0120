
echo Hello World

mkdir new_dir

rmdir new_dir

cp ./lorem/sed.txt ./lorem-copy

cp ./lorem/{at.txt,lorem.txt} ./lorem-copy

cat ./lorem/sed.txt

cat ./lorem/at.txt ./lorem/lorem.txt

head -3 ./lorem-copy/sed.txt

tail -3 ./lorem-copy/sed.txt

echo "Homo homini lupus" >> ./lorem-copy/sed.txt

tail -3 ./lorem-copy/sed.txt

sed 's/et/ET/g' ./lorem-copy/at.txt

whoami

pwd

find ./lorem -type f -name "*.txt"

wc -l ./lorem/sed.txt

find . -type f -name 'lorem*' -exec echo . \; | wc -l

grep -o 'et' ./lorem/at.txt

grep -o 'et' ./lorem/at.txt | wc -l

grep -roh 'et' ./lorem-copy | wc -w