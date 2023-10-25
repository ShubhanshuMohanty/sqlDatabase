create database AllConstraint
use AllConstraint

--set of rules 
--not null constraint
--does not allows null values
create table tab_nn
(id int not null,name varchar(20),sal money)

--add not null constraint through alter 
alter table tab_nn alter column sal money not null

--primary key constraint
/*
1.does not allows  null values
2. donot duplicated values are allowed
3. only one primary key is allowed per table
4. cant apply pk constraint on nullable

*/

create table tab_pk
(
id int primary key,
name varchar(20),
sal money
)

--pk alter
create table tab_pk2
(
id int not null,
name varchar(20),
sal money
)

alter table tab_pk2 add primary key(id)

/*unique constraint
1. only one null value  allowed
2.no duplicate values aalowed
3.table allow multiple unique keys
4.we can apply unique on multiple column
*/
--while creating table
create table tab_uni
(id int unique,
name varchar(40),
loc varchar(30)
)

insert into tab_uni values
(1,'sm','thane'),
(null,'abhi','thane')

insert into tab_uni values
(null,'shahazan','mumbra')
select * from tab_uni 

alter table tab_uni add unique(name)

--after creating table
create table tab_uni2
(id int,
name varchar(40),
loc varchar(30)
)

alter table tab_uni2 add unique(id)




/*	check constraint
1.it check  the condition ,if condition is true then insert value else it throw error
*/
--
create table tab_ck
(id int,
name varchar(20),
salary money check(salary<=20000)
)

insert into tab_ck values
(101,'abhi',10000)

insert into tab_ck values
(102,'shahazan',20001)

/*it gave error
Msg 547, Level 16, State 0, Line 1
The INSERT statement conflicted with the CHECK constraint "CK__tab_ck__salary__276EDEB3". The conflict occurred in database "AllConstraint", table "dbo.tab_ck", column 'salary'.
*/
select * from tab_ck

--AFTER CREATING TABLE
alter table tab_ck add check (id>11)

alter table tab_ck add check (id>10)

/*
	Default constraint	
*/

create table tab_def
(id int,
name varchar(20),
clg varchar(20) default 'aptech',
loc varchar(20) 
)
 
insert into tab_def (id,name,loc) 
values (1,'sm','thane')

select * from tab_def

--after creating table
alter table tab_def add default 'thane' for loc

insert into tab_def (id,name) 
values (2,'shahazan')



/*
foreign key
*/

create table emp(id int primary key,
					name varchar(40))

insert into emp values(101,'sm'),(102,'sp')

create table products (pid int,
						pname varchar(40),
						eid int foreign key references emp(id))

insert into products values(1001,'Fan',101),
							(1002,'Mobile',102)

select * from emp
select * from products

--alter foreign key
create table product (pid int,
						pname varchar(40),
						eid int)

alter table product add foreign key(eid) references emp(id)