<<<<<<< HEAD:mysql/db_script.sql
CREATE DATABASE DEMO;
USE DEMO;

CREATE TABLE user (first_name VARCHAR(30), last_name VARCHAR(30), email VARCHAR(30), username VARCHAR(30), password VARCHAR(30), regdate DATE);
CREATE TABLE logindetails (username VARCHAR(30), logindate DATE, logintime TIME,logoutdate DATE, logouttime TIME, session VARCHAR(30));

insert into user(first_name, last_name, email, username, password, regdate) values ('test','test','test@test.com','test','test', CURDATE());
=======
create database demo;
use demo;

create table user (first_name varchar(30), last_name varchar(30), email varchar(30), username varchar(30), password varchar(30), regdate date);
create table logindetails (username VARCHAR(30), logindate DATE, logintime TIME,logoutdate DATE, logouttime TIME, session VARCHAR(30));

insert into user(first_name, last_name, email, username, password, regdate) values ('test','test','test@test.com','test','test', CURDATE());
>>>>>>> 273ce35594f148b1d50f062e692db0b5bf18cf05:database/db_script.sql
