FROM openjdk:11-jre-slim

RUN apt update && apt install -y curl

WORKDIR /app
COPY ./target/spring-petclinic-*.jar /app
COPY ./start_server.sh /app

ENTRYPOINT ./start_server.sh
