#!/bin/bash
array=()
while IFS= read -r line
do 
    array+=("$line")
done < <(ls | grep file)

delete=()
arraylen=${#array[@]}

for (( i=0; i<${arraylen}; i++ )) #comparing all pair of files
do 
    for (( j=$i+1; j<${arraylen}; j++ ));
    do
        f1="${array[$i]}"
        f2="${array[$j]}"
        # if [[ (-e "$f1" ) && (-e "$f2" ) ]]
        # then    
            # if [[ $(diff $f1 $f2 | wc -m) -eq 0 ]]
            if cmp -s $f1 $f2
            then 
                delete+=("$f2")
            fi    
        # fi
    done    
done    

for i in "${delete[@]}"
do
    mv "$i" new
done   

echo `clear`
