
packageName=$PACKAGE_NAME

# build package
echo "${packageName}" > "${packageName}.jar"

# move package
if ! test -d "docker"; then
  echo "docker 文件夹不存在"
  echo "创建文件夹"
  $(mkdir "docker")
fi

$(cp "${PACKAGE_NAME}.jar" "docker")