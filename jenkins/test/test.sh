
a=100
b=100
if test ${a} -eq ${b}
then
  echo "两个数相等"
else
  echo "两个数不等"
fi

if [ $a -eq $b ]; then
    echo "两个数相等"
else
    echo "两个数不等"
fi

c=`expr $a - $b`

echo $c

c=$((a+b))
echo $c

for file in $(ls); do
  echo $file
done