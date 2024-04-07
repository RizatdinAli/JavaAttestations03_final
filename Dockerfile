# Start with a base image containing Java runtime
FROM openjdk:17-jdk
MAINTAINER Ali Rizatdinov <alirizatdinov@gmail.com>
ARG JAR_FILE=target/phone-store-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8080