use safaa;
-- problem 1
insert into employee (DNO,SSN,Fname,Lname,Bdate,Address,Gender,SuperSSN)
values (30,102672,'Ba2a','Elsayed','2000-10-25','Benha','f',112233);

-- problem 2
insert into employee (DNO,SSN,Fname,Lname,Bdate,Address,Gender)
values (30,102660,'Safaa','Elsayed','2000-9-25','Benha','f');
-- OR
insert into employee (DNO,SSN)
values (30,102660);

-- problem 3 
insert into departments (Dname,Dnum,MGRSSN,MGRSatrtDate)
values ('DEPT IT',100,112233,'2006-11-1');

-- problem 4 
-- A
update departments 
set MGRSSN = 968574
where Dnum = 100;
-- B
update departments 
set MGRSSN = 102672
where Dnum = 20;
-- C
update employee 
set SuperSSN= 112233 
where SSN = 102660 ;

-- problem 5
delete from dependent 
where ESSN = 223344;
delete from works_for
where Essn = 223344;
-- update departments set MGRSSN=102660where Dnum=20;
update departments 
set MGRSSN=102672
where Dnum=10;
update employee
SET SUPERSSN = 102672
where SUPERSSN = 223344;
delete from employee 
where SSN = 223344;

-- problem 6
-- كان بيجيب null ف الاول عشان ماكنش له قيمة واما اديته قيمة وعملت ابديت ظبط
update employee 
set Salary = Salary*1.2
where SSN=102660 ;



-- PART2
-- Q1
select * from employee;
-- Q2
select Fname, Lname, Salary ,DNO from employee;
-- Q3
select Fname, Salary*1.1 as 'ANNUAL COMM' from employee;
-- Q4
select Fname, SSN from employee
where Salary>1000;
-- Q5
select Fname, SSN from employee
where Salary*12>10000;
-- Q6
select Fname, Lname, Salary from employee
where Gender= 'f';
-- Q7
select Dname,Dnum from departments
where MGRSSN=968574;
-- Q8
select Pnumber, Pname , Plocation from project 
where Dnum=10;
select * from dependent;