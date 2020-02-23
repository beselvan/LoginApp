FROM tamileng/login_tomcat:1.0
MAINTAINER TAMIL
COPY /root/.jenkins/workspace/LoginApp/target/LoginApp.war /usr/local/tomcat/webapps/

