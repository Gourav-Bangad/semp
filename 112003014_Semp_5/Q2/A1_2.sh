#!/bin/bash
arr=()
file='yt_trans.txt' #youtube transcipt file
count=0
while read line;
do
a=`expr $count%2 | bc`
if [ $a == 0 ];
then 
     arr+=("$line") #picking up the text lines from yt transcript file
fi 
((count=count+1))
done < $file

i=1
j=0
while read line; 
do
a=`expr $i%2 | bc`
if [ $a != 0 ];
then
	if [ $j != 0 ];
	then 
		echo "" >> new.srt
	fi
	echo "$line --> ${arr[$(($j+1))]}" >> new.srt #adding current and next time 
	j=$(($j+1))
fi
if [ $a == 0 ];
then 
	echo "$line" >> new.srt 
fi
i=$(($i+1))

done < $file

