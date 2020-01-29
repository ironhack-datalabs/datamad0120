echo "Hello World"
mkdir new_dir
rmdir new_dir
cp sed.txt /Users/luciasuelves/Documents/Ironhack Data/datamad0120/module-2/lab-bash/lorem-copy
cp lorem/at.txt lorem/lorem.txt lorem-copy
less sed.txt
less at.txt lorem.txt
head -3 sed.txt
tail -3 sed.txt
"Homo homini lupus" >> sed.txt
sed -i 's/et/ET/g' at.txt
sed -i'' -e 's/et/ET/g' at.txt
who
pwd
grep "txt" /lorem
wc -l sed.txt
wc "et" at.txt