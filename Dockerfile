FROM tamileng/login_tomcat:1.0
MAINTAINER TAMIL
COPY ./target/LoginApp.war /usr/local/tomcat/webapps/

