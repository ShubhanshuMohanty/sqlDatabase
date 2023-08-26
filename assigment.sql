create database practiceSet_db
use practiceSet_db

--create table
create table sales_info
(salesman_id int,name varchar(50),
city varchar(40),commission int)

insert into sales_info values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5003,'Lauson Hen','',0.12),
(5007,'Paul Adam','Rome',0.13)

select * from sales_info

 alter table sales_info alter column commission float
 
 delete from sales_info

 print 'This is SQL Exercise, Practice and Solution'

 declare @a as int
 declare @b as int
 declare @c as int
 set @a=10
 set @b=15
 set @c=@a+@b
 print @c

 select name,commission from sales_info

 create table orders
 (ord_no int primary key,purch_amt float,
 ord_date char(10),customer_id int,
 salesman_id int)

 drop table orders
 alter table sales_info 
 add constraint pk_cid primary key(salesman_id)

 alter table sales_info alter column salesman_id int not null

 alter table orders 
 add constraint fk_id foreign key(salesman_id)
 references sales_info

 insert into orders values
 (70001,150.5,'2012-10-05',3005,5002),
 (70009,270.65,'2012-09-10',3001,5005),
 (70002,65.26,'2012-10-05',3002,5001),
 (70004,110.5,'2012-08-17',3009,5003),
 (70007,948.5,'2012-09-10',3005,5002)

 select * from orders

 select ord_date,salesman_id,ord_no,purch_amt from orders

 select * from sales_info where city='paris'


 --****************************************assigment 2***********************************************

 create table customers
 (customer_id int,cust_name varchar(50),
 city varchar(50),grade int,salesman_id int
 constraint fk_sid foreign key(salesman_id)
 references sales_info(salesman_id)
 on delete cascade 
 on update cascade)


 insert into customers values
 (3002,'Nick Rimando','New York',100,5001),
 (3005,'Graham Zusi','California',200,5002),
 (3001,'Brad Guzan','London',null ,5005),
 (3004,'Fabian Johns','Paris',300,5006),
 (3007,'Brad Davis','New York',200,5001),
 (3009,'Geoff Camero','Berlin',100,5003),
 (3008,'Julian Green', 'London',300,5002),
 (3003,'Jozy Altidor', 'Moncow',200,5007)

 select * from customers

 --
 select ord_no,ord_date,purch_amt from orders where salesman_id=5001

 --2
 select * from customers where grade >100

 --3
 select * from customers where(city='New York' and grade > 100)

 --4
 select * from customers where(city='New York' or grade > 100)

 --5
  select * from customers where(city='New York' or grade <= 100)

 --6
 select * from customers where(city!='New York' or grade > 100)

 --7
 select * from orders where(ord_date!='2012-09-10' and salesman_id=505) or purch_amt<=1000

  --
  alter table orders  alter column customer_id int not null

  alter table orders add constraint pk_csid primary key(customer_id)
-----

--8
select salesman_id,name,city from sales_info where (commission>=0.10 and commission <=0.12)

--9 specified means by users
select * from orders where(purch_amt<200 or customer_id>=3005)

--10
select * from orders where(purch_amt>200 or customer_id=3005)

--11 skip


--12
select * from sales_info where city='Paris' or city='Rome'

--13 repeat


--14
select * from sales_info where city!='Paris' and city!='Rome'

--15
select *from customers where (customer_id>=3007 and customer_id<=3009)

--16
select * from sales_info where(commission>=0.12 and commission<=0.14)

--17
select * from sales_info where (name like 'A%' or name like 'L%')

--18
select * from sales_info where (name not like 'A%' and name not like 'L%')

--19
select * from customers where (cust_name like 'B%')

--20
select * from customers where (cust_name like '%B')

--21
select *from sales_info where (name like 'N%' and name like '___L%')

--22


--23
select * from customers where grade is null

update customers set grade=0 where customer_id=3003
--select*from customers
--where grade is not null and grade !=0