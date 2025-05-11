# FROM maven:3.9.9-eclipse-temurin-11-alpine as build
#
# COPY . /app
#
# WORKDIR /app
#
# RUN mvn clean package
#
# FROM nginx:1.17.10-alpine
#
# # This is the particular port where the docker container will be listening on
# EXPOSE 80
#
# # THis basically copies the result of the node container and paste it in the nginx html folder
# COPY --from=build /app/target/WebAppCal-0.0.6.war /usr/share/nginx/html
FROM openjdk:25-ea-21-jdk-oraclelinux9
EXPOSE 8082
ADD target/WebAppCal-0.0.6.war WebAppCal-0.0.6.war
ENTRYPOINT ["java", "-war", "/WebAppCal-0.0.6.war"]

