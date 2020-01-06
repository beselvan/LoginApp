FROM tamileng/demo_tomcat:1.1
MAINTAINER TAMIL
COPY ./target/LoginWebApp.war /usr/local/tomcat/webapps/

