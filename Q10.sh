#!/bin/sh
year=2000
i=0
while [ $i -lt 10 ]
do
	if [ `expr $year % 4` -eq 0 ] #arithmetic operation
	then
		echo "$year is a leap year"
		i=`expr $i + 1`
	fi
	year=`expr $year + 1`
done
