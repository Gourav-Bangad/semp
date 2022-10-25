#!/bin/bash

file1="filename1.txt"
file2="filename2.txt"

if cmp -s "$file1" "$file2"; then  #compare to find -s is supress (0 and 1 output)
    printf 'The file "%s" is the same as "%s"\n' "$file1" "$file2"
else
    printf 'The file "%s" is different from "%s"\n' "$file1" "$file2"
fi
