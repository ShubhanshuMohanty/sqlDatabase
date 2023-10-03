create database pers_db
use pers_db

--identity (seed,increment) :		identity(1,1)
--auto increment values on column
--seed->starting value of id --default values is 1
--increment->icremental values b/w id's

--its apply only numeric datatype(int,decimal,Numeric,...)
--a table should contains one identity function only

create table emp(Eid int identity,
ename varchar(40),salary money )

insert into emp values(1,'sm',25000)--not allowed
/*error
	An explicit value for the identity column in table 'emp' can only
	be specified when a column list is used and IDENTITY_INSERT is ON.
*/

insert into emp values('sm',25000) --allowed
insert into emp values('sp',25000)
select * from emp


--ex:2
--here i assiggne user defined value
create table emp1(eid int identity(100,5),
ename varchar(40),salary money)

insert into emp1 values('sm',25000) --allowed
insert into emp1 values('sp',25000)
select * from emp1

/*
syntax:
	set identity_insert <tn> off/on

off--default connection of identity,
we cannot insert the value into identity column by explicitily.
on-->we can insert value
*/

select * from emp

--now we set value
set identity_insert emp on

insert into emp(eid,ename,salary) values(3,'om',25000)

--now we arnt able to insert value of eid
set identity_insert emp off


