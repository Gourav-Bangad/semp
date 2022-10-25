#!/bin/bash
echo enter string
read string

i=0
j=$[${#string}-1]
a=0
while [ $i -le $j ]
do 
	if [ ${string:$i:1} != ${string:$j:1} ]
	then 
		a=1
		break 
	else 
		i=$[$i+1]
		j=$[$j-1]
	fi
done
if [ $a -eq 1 ] 
then echo Not a palindrome 
else echo The given string is a palindrome
fi