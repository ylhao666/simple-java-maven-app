
echo `expr 1 + 1`

echo `expr 2 - 1`

echo `expr 2 \* 2`

echo `expr 3 / 2`

echo `expr 1 == 1`

echo `expr 1 != 1`

a=1
b=2

if [ $a == $b ]; then
  echo "${a} == ${b}"
fi

if [ $a != $b ]; then
    echo "${a} != ${b}"
fi

a=10
b=20

if [ $a -eq $b ]; then
    echo "a == b"
fi

if [ $a -ne $b ]; then
    echo "a != b"
fi

if [ $a -gt $b ]; then
    echo "a > b"
fi

if [ $a -lt $b ]; then
    echo "a < b"
fi

if [ $a -ge $b ]; then
    echo "a >= b"
fi

if [ $a -le $b ]; then
    echo "a <= b"
fi

if [ $a -lt $b ] && [ $b -gt $a ]; then
    echo "true"
fi

if [ $a -gt $b ] || [ $a -lt $b ]; then
    echo "true"
fi

if [ $a != $b ]; then
  echo "a != b"
fi