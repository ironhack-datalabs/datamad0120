#!/bin/bash 

name="Alex"

echo $name

mkdir $name

rmdir $name

for file in *
do
ls | head -n $file
done

