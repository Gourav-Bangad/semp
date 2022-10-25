#!/bin/bash  
  
file='file.txt'  
  
i=1  
while read line; 
do    
#Reading each line  

echo "Line $i : $line"  
i=$((i+1))  
done < $file  
