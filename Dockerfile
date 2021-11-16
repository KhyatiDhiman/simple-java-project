FROM tomcat:7-jdk8-openjdk-slim
MAINTAINER khyati
ENV a=1234
RUN mkdir /var/demo
ARG WAR_FILE=target/
COPY ${WAR_FILE} application.war
USER root
WORKDIR /var/demo
EXPOSE 8080
ENTRYPOINT 
