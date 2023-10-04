use pers_db


--set operators
-->to combined two or more than two select statement 
/*
union:-> to combined the result of two or more than 2 seelect statement
	 result as single union of without duplicate values

union all:->union of with duplicate values

intersect:->to return comun value

except:->to return all values from the left hand table
	 which are not found in  the right hand table
*/


-----------------------------------------------------------
--rules
/*
1) no of column shpuld be same
2) order of column should be same
3)Datatypes of the column must be same 
*/

--ex:
create table emp_hyd(eid int,
ename varchar(20),salary money)

create table emp_chennai(eid int,
ename varchar(20),salary money)

select * from emp_hyd
union
select * from emp_chennai

select eid from emp_hyd
union
select eid from emp_chennai


--union all
select eid from emp_hyd
union all
select eid from emp_chennai

--intersect
select * from emp_hyd
intersect
select * from emp_chennai

--except
select * from emp_hyd except select * from emp_chennai


select * from emp_chennai
except
select * from emp_hyd