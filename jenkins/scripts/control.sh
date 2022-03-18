
a=100
b=200
c=300

if [ $a -gt $b ]; then
    echo "a > b"
elif [ $a -gt $c ]; then
    echo "a > c"
elif [ $b -gt $c ]; then
    echo "b > c"
else
    echo "c > a"
fi

for var in a b c; do
  echo $((var))
done

var=1
while [ $var -le 5 ]; do
    echo $var
    var=$((var+1))
done

var=1
until [ $var -eq 6 ]; do
    echo $var
    var=$((var+1))
done

:<<EOF
echo "请输入数字"

read num

case $num in
  1) echo "输入了1"
  ;;
  2) echo "输入了2"
  ;;
  *) echo "未匹配"
esac

while true; do
  echo "请输入数字"
  read num
  case $num in
    1|2|3|4|5) echo "数字位于 1~5"
    ;;
    *) echo "数字输入错误"
        break
    ;;
  esac
done
EOF

var=1
echo $((var+1))

while [ $var -le 10 ]; do
  echo $var
  var=$((var+1))
done

# 9 * 9 乘法表
row=1
column=1

while [ $row -le 9 ]; do
    var=1
    while [ $var -le $column ]; do
        echo -e "${var} * ${row} = $((row*var)) \c \s"
        var=$((var+1))
    done
    row=$((row+1))
    column=$((column+1))
    echo ""
done
