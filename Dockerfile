FROM openjdk:11-jre-slim

WORKDIR /app
COPY ./target/spring-petclinic-*.jar /app
COPY ./contrast.jar /app

ENTRYPOINT java -jar spring-petclinic-*.jar
