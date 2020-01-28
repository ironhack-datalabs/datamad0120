echo Hellow world
mkdir new_dir
rmdir new_dir
cp lorem/sed.txt lorem-copy/
cp lorem/*.txt lorem-copy/ 
cat sed.txt
cat *.txt
head -n 3 lorem-copy/sed.txt
tail -n 3 lorem-copy/sed.txt
echo >> lorem-copy/sed.txt
tail -n 3 lorem-copy/sed.txt  
sed 's/et/ET/g' lorem-copy/at.txt
who
pwd
find ./lorem -type f -name "*.txt"
wc lorem-copy/sed.txt
find "lorem"| wc -l
grep "et" lorem/at.txt
grep -c "et*" lorem/at.txt
grep -c "et*" lorem-copy/*