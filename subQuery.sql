create database subquery

use subquery

create table stud_info
(
s_id int,
s_name varchar(40),
r_no int,
course_name varchar(40)
)

alter table stud_info alter column s_id int not null
alter table stud_info add primary key (s_id)

create table payment_info
(
p_id int,
s_id int foreign key references stud_info(s_id),
dop date,
amount money,
mode varchar(20)
)

