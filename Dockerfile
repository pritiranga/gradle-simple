FROM openjdk:8-jdk-alpine

COPY build/libs/*.jar /app/vulnerable-application.jar
ENTRYPOINT ["java","-jar","/app/vulnerable-application.jar"]
