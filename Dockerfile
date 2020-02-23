FROM tamileng/login_tomcat:2.0
MAINTAINER TAMIL
COPY ./target/LoginApp.war /usr/local/tomcat/webapps/

