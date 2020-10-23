FROM openjdk:8u212-alpine

LABEL name "Springboot base image" 
LABEL maintainer "Cognizant"
LABEL version=1.0

USER root

ENV APP_LOC=/usr/src/app

WORKDIR $APP_LOC

COPY build/libs/app.jar /usr/src/app.jar

ENTRYPOINT ["java","-jar","app.jar"]