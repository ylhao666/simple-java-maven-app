
fun1() {
    echo "调用函数1"
}

fun1

fun2() {
    echo "调用函数2"
    for var in ${*}; do
      echo $var
    done
}

fun2 a b c d

fun3() {
    return $((1+1))
}

# 取得返回值
fun3
echo $?


