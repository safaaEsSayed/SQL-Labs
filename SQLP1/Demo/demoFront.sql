-- SQL
-- Structured Query Language
--  DDL( create -alter-drop)
-- DML (insert - update - delete
-- DCL (grant - revoke
-- DQL (select)

create table table1(
tid int primary key,
tname varchar(20) not null,
tdate date
);

alter table table1 drop column tdate;

alter table table1 add column city varchar(15) default 'Cairo';


create table tabl2(
	tnum int primary key,
    tname varchar(15),
    tmyfk int,
    foreign key(tmyfk) references table1 (tid)
);
insert into tabl2 values(10,'ITI',100)

create table table3(
myid int,
phone varchar(15),
primary key (myid,phone)

);

drop table table1;



-- DML
insert into table1 values(10,'Front','Alex');

insert into table1 values(10,'Front');
insert into table1 (tid,tname) values(20,'Java');

insert into table1 (tid,tname) values(30,'Java'),(40,'SD'),(50,'PHP');


update table1
set city='Menoufia'
where tid=30;

delete from table1
where tid=40;



-- select
select * 
from employee;

select fname,lname,salary
from employee;

select concat(fname,' ',lname) as 'Full Name',salary
from employee;

select concat(fname,' ',lname) as 'Full Name',salary
from employee
where gender='f';

-- >,< >=, <= ,<>

select concat(fname,' ',lname) as 'Full Name',salary
from employee
where salary >1000;


select concat(fname,' ',lname) as 'Full Name',salary
from employee
where salary between 1000 and 1500;

select concat(fname,' ',lname) as 'Full Name',salary
from employee
where salary in (800,1200,1000);


select concat(fname,' ',lname) as 'Full Name',salary
from employee
where fname like '_a%';

select concat(fname,' ',lname) as 'Full Name',salary,salary+salary*0.1 as 'Total Salary'
from employee
order by fname,lname;

use frontlab;

select * from employee;

