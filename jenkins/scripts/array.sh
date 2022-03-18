
arr=(1 2 3 4)

for var in ${arr[*]}; do
  echo $var
done

echo "${arr[*]}"

echo "${#arr[*]}"