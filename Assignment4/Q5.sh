#!/bin/bash  

file='outputFile.txt'

echo "cat" > $file
echo "dog" >> $file
echo "bear" >> $file
echo "hello" >> $file
echo "elephant" >> $file
echo "hello" >> $file
echo "tiger" >> $file
echo "hello" >> $file
echo "horse" >> $file

grep -v "hello" outputFile.txt > tmpfile && mv tmpfile outputFile.txt # grep used to find specific word -v is used to find all word other than this word ,copy all word in temp file and replace it with outputfile


