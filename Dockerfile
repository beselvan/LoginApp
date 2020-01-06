FROM tamileng/login_tomcat:1.0
MAINTAINER TAMIL
COPY ./target/LoginWebApp.war /usr/local/tomcat/webapps/

