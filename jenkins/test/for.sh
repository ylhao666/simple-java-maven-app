
echo $#

echo $0

for var in "$*"; do
  echo $var
done

for var in "$@"; do
  echo $var
done