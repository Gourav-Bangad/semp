#!/bin/bash  

File='readFile.txt'

if test -f "$File";then #check file is present
echo "$File exist"
echo "hello world" >> $File #append

else
echo "$File does not exist"
echo "hello world" > $File #write

fi


