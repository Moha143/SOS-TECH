create database SOS


create table user_info(
UserID int ,
Name nvarchar(50),
Email nvarchar(50),
Number int ,
Username nvarchar(50),
passwords nvarchar(50),

)

create table emp_registration
(
emp_id int primary key ,
emp_name varchar(60),
emp_tell int ,
emp_Email varchar(20),
gender varchar(20),
qualification varchar(20),
salary money,

)
drop table emp_registration 

create table contact
(

name varchar(60),
Email varchar(20),
CMessage varchar(250),

)

drop table contact 
 



insert into user_info values(1,'mohamed omar','moha@gmail.com',0615314730,'moha',124)
insert into user_info values(2,'Abdighafar mohamud','abdighafar@gmail.com',0612226348,'Abdighafar',123)
insert into user_info values(3,'abdikadir dahir','abdikadir@gmail.com',0618717999,'Abdabdikadir',125)

select * from customer 



insert into emp_registration  values(1,'mohamed omar','613445554','moha@gmail.com','male','phd',124)

create table customer (


cust_id int primary key,
cust_name varchar(250),
cust_tell varchar(250),
cust_Email varchar(250),
cust_services varchar(250),



)
