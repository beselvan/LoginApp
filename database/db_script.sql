CREATE DATABASE DEMO;

CREATE TABLE USER (first_name VARCHAR(30), last_name VARCHAR(30), email VARCHAR(30), username VARCHAR(30), password VARCHAR(30), regdate DATE);

insert into USER(first_name, last_name, email, username, password, regdate) values ('test','test','test@test.com','test','test', CURDATE());
