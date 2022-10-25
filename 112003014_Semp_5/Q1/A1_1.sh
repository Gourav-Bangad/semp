#!/bin/bash

function create_vcard {
cat << EOM
NAME:$one
AGE:$two
GENDER:$three
TEL;TYPE=CELL:$four
EOM
}

OUT=data.vcard   #output file

if [ -e ${OUT} ] ; # if OUT already exists then rename 
then mv ${OUT} ${OUT}.last ; #?
fi 

echo "BEGIN:VCARD" >> ${OUT} #according to vcard format #header
echo "VERSION:3.0" >> ${OUT}

while IFS=, read -r one two three four; #IFS=, seperate values by comma IFS(Internal Field Separator)
do 
    create_vcard >> ${OUT}
done < contact.csv

