FROM ubuntu:latest AS build

RUN apt-get update && apt-get install openjdk-21-jdk maven -y

COPY . .

RUN chmod +x mvnw && ./mvnw clean install -DskipTests

FROM eclipse-temurin:21-jdk-alpine

COPY --from=build /target/todolist-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]

