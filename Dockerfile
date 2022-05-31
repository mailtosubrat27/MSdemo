FROM openjdk:8-jdk-alpine
MAINTAINER baeldung.com
COPY target/MSdemo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar"]