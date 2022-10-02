FROM openjdk:8-jdk-alpine

COPY build/libs/poc-2.0.jar /app/poc-2.0.jar
ENTRYPOINT ["java","-jar","/poc-2.0.jar"]
