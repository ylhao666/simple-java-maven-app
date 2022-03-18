packageName=$PACKAGE_NAME

# build image
if ! test -d "docker"; then
    echo "docker 文件夹不存在"
    exit 42
fi

if ! test -f "docker/${packageName}.jar"; then
    echo "${packageName}.jar 不存在"
    exit 43
fi

# $(docker build -t "${IMAGE_NAME}:${IMAGE_VERSION}" -f "${DOCKERFILE_NAME}" docker)

# 测试读取内容
read text < "docker/${packageName}.jar"

echo $text

# run container


