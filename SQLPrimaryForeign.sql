create table course
(cid int not null,
cource_name varchar(40),
constraint cid_pk primary key(cid))

--alter method for primary key
create table course1
(cid int not null,cource_name varchar(30))

alter table course1 add constraint pk_cid primary key(cid)


--foreign key
create table course_detaile
(cid int,duration int,fee int
constraint fk_cid foreign key(cid)
references course (cid)
on delete cascade 
on update cascade)

--through alter command

create table course_detail2
(cid int,duration int,fee int)

alter table course_detail2 add constraint fk_details2 foreign key(cid) references course1