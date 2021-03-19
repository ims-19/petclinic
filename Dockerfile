FROM maven:3.6.3-jdk-11

WORKDIR /app
COPY ./target/spring-petclinic-*.jar /app
COPY ./contrast.jar /app

ENTRYPOINT java -jar spring-petclinic-*.jar
