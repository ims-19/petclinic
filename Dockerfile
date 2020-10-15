FROM maven:3.6.3-jdk-11

WORKDIR /app
COPY . /app

ENTRYPOINT mvn spring-boot:run
