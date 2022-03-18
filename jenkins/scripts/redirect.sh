# 输入输出重定向

str=""

var=50

while [ $var -le 100 ]; do
    str="${str} ${var}"
    var=$((var+1))
done

echo $str > 1_10.txt

echo $str

echo `ls` > ls.txt

read var < ls.txt

ec 2>err.txt

echo "test" >> test.txt 2>&1

echo "test" > /dev/null 2>&1

echo `wc < 1_10.txt`


