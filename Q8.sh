echo "Enter marks " 
read m
choice=0
if  test $m -gt 75 || test $m -eq 75
then
    choice=1
elif test $m -gt 60 || test $m -eq 60
then
    choice=2
elif test $m -gt 50 || test $m -eq 50
then
    choice=3
else
    choice=4
fi
case $choice in
   1) echo "I Division";;  
   2) echo "II Division";;
   3) echo "III Division";;
   4) echo "FAIL";;
esac
