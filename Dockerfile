# FROM openjdk:8-jdk-alpine
# MAINTAINER baeldung.com
# ENTRYPOINT ["java","-jar"

# FROM java:8
# VOLUME /tmp
# WORKDIR /tmp/
# COPY target/MSdemo-0.0.1-SNAPSHOT.jar app.jar
# EXPOSE 3000
# RUN bash -c 'touch /app.jar'
# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]]


# FROM tomcat:8
# LABEL app=my-app
# COPY target/*.war /usr/local/tomcat/webapps/myweb.war



# FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
# COPY pom.xml /tmp/
# RUN mvn -B dependency:go-offline -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml
# COPY src /tmp/src/
# WORKDIR /tmp/
# RUN mvn -B -s /usr/share/maven/ref/settings-docker.xml package

# FROM java:8-jre-alpine

# EXPOSE 8080

# RUN mkdir /app
# COPY --from=MAVEN_TOOL_CHAIN /tmp/target/*.jar /app/spring-boot-application.jar

# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/spring-boot-application.jar"]



# FROM openjdk:8
# ARG JAR_FILE=target/*.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]


FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/msdemo.jar msdemo.jar
ENTRYPOINT ["java","-jar","msdemo.jar"]