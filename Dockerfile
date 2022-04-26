FROM adoptopenjdk/openjdk11:jdk-11.0.14_9

WORKDIR /app

COPY ./target/sample-rest-hello-world-*.jar /app/app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Duser.timezone=UTC -jar /app/app.jar"]
EXPOSE 8080
