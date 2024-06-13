FROM maven:3.9.3-eclipse-temurin-17
COPY src src
COPY pom.xml .
RUN mvn clean package
COPY target/*.jar maven-project.jar

