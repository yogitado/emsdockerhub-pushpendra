#Base Image
FROM ubuntu:14.04

#Adding discription to the images
LABEL Description="This image is used for JAVA CI" Version="1.0"

# File Author / Maintainer
MAINTAINER Group#3


#inastalling git jdk and maven
RUN apt-get update && apt-get install -y git maven openjdk-7-jdk

#Setting timezone to match time zone of sonar server
RUN echo "Asia/Kolkata" > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata


#adding jenkins user
RUN adduser jenkins
RUN echo "jenkins:jenkins" | chpasswd

#Volume Mounting (Docker custom build env plugin copy reports by itself)
#VOLUME ["/var/lib/jenkins"]


#Exposing the port
EXPOSE 80


#Entry point or image starting point
#ENTRYPOINT ["",""]

