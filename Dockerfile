# syntax=docker/dockerfile:1
FROM openjdk:16-alpine3.13
WORKDIR /Users/k/IdeaProjects/boot_rest
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]