create database subQ
use subQ

create table emp(eid int primary key,
ename varchar(30),
sal money,
comm int,
loc varchar(30)
)

insert into emp values
(1,'aaa',10000,100,'Mumbai'),
(2,'bbb',20000,null,'Thane'),
(3,'ccc',30000,300,'pune'),
(4,'ddd',15000,200,'Mumbai'),
(5,'eee',40000,null,'thane'),
(6,'fff',30000,null,'pune'),
(7,'ggg',50000,500,'pune')

select * from emp

select ename from emp

select distinct loc from emp

select ename from emp where loc='thane'

alter table emp add pid int

create table product 
(
pid int,
pname varchar(20)
)

insert into product values
(100,'laptop'),
(101,'pd'),
(102,'mobile'),
(103,'tablet')

select * from emp
where pid=(select pid from product where pname='pd')

---view---
/*syntax*/
--simple view
create view view_name as 
select col1,col2,...
from table_name
where condition 

create view myFirstView as
select eid,ename
from emp

select * from myFirstView

--computed table
create table stuName
(
id int,
fname varchar(20),
lname varchar(20),
fullName as(fname + ' '+lname) persisted
)

insert into stuName(id,fname,lname) values
(1,'Shubhanshu','Mohanty'),
(2,'Satya','Prakash'),
(3,'Abhishek','Tiwari')

select * from stuName
