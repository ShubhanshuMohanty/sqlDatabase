create database om_db
use om_db
create table sm_detail(name varchar(10),city varchar(10))
insert into sm_detail values('omkar','thane')
insert into sm_detail values('kunal','delhi')
insert into sm_detail values('niraj','thane')
insert into sm_detail values('survesh','mumbai')
insert into sm_detail values('sm','mumbai')
insert into sm_detail values('soham','andheri')
insert into sm_detail values('chotu','dombivali')
select * from sm_detail
update sm_detail set city='thane' where name='sm'
delete sm_detail where name='chotu'
select name,city from sm_detail order by city
select name,city from sm_detail order by name 
select * from sm_detail where city='thane' or city='andheri'
select * from sm_detail where city='mumbai' or city='nashik'
select * from sm_detail where city='nashik' or city='sm'
select * from sm_detail where city='thae'
