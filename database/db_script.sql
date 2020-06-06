CREATE DATABASE DEMO;
USE DEMO;

CREATE TABLE user (first_name VARCHAR(30), last_name VARCHAR(30), email VARCHAR(30), username VARCHAR(30), password VARCHAR(30), regdate DATE);
CREATE TABLE logindetails (username VARCHAR(30), logindate DATE, logintime TIME,logoutdate DATE, logouttime TIME, session VARCHAR(30));

insert into user(first_name, last_name, email, username, password, regdate) values ('test','test','test@test.com','test','test', CURDATE());
