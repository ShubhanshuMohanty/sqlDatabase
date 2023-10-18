--as
select address as city from stud_detail

--group by
select address from stud_detail 
group by address

--having 
select address ,count(*) from stud_detail 
group by address
having address='thane'



