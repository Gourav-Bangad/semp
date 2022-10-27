#!/bin/bash  

read -p "Enter directory name : " dir #prompt(to print)

if [ -e $dir ] #-e means exist #-d for 
then echo "Directory already exists"
else 
echo "Directory does not exist"
mkdir $dir
fi
