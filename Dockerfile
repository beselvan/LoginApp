FROM tomcat
MAINTAINER TAMIL
COPY ./target/LoginApp.war /usr/local/tomcat/webapps/
COPY ./tomcat/*.xml /usr/local/tomcat/conf/
