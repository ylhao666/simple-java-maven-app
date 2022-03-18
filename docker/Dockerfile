FROM openjdk:8-jre-slim
ARG PACKAGE_NAME
ENV PACKAGE_NAME=${PACKAGE_NAME}
WORKDIR /app
COPY ${PACKAGE_NAME}.jar ./${PACKAGE_NAME}.jar
RUN echo "java -jar ${PACKAGE_NAME}.jar \${@}" > ./entrypoint.sh && chmod +x ./entrypoint.sh
ENTRYPOINT ["sh", "entrypoint.sh"]