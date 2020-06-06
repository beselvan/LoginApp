FROM tomcat
MAINTAINER TAMIL
COPY ./target/LoginApp.war /usr/local/tomcat/webapps/
COPY ./tomcat/*.xml /usr/local/tomcat/conf


FROM mysql:8.0
MAINTAINER TAMIL
COPY ./mysql/db_script.sql /docker-entrypoint-initdb.d/