FROM eclipse-temurin:17-jdk-alpine as build
WORKDIR /app
RUN mvn clean package