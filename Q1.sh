echo "Enter the cost price"
read cp
echo "Enter the selling price"
read sp

if [ $cp -gt $sp ]
then
s=$((cp - sp))
echo "Loss:$s"
else
s=$((sp - cp))
echo "Profit :$s"
fi
