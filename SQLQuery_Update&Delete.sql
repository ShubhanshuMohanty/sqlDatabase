create database revision
use revision
create table stud_detail
(
id int,
name varchar(40)
)
alter table stud_detail add phono int

sp_help stud_detail
insert into stud_detail values 
('001','sm','996786')

insert into stud_detail 
values('002','sp','899770')

select * from stud_detail

--for update one value
update stud_detail set name='ssp' where id=2

alter table stud_detail add s_address varchar(50)

--for update all values
update stud_detail set s_address='xyz'

insert into stud_detail 
values('003','sk','899779','abc')

--delete one value
delete from stud_detail where id=001

--delete all values
delete from stud_detail
