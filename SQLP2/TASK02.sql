-- Task02
-- Q1
use sql2;
select Dname,Dnum ,MGRSSN, Fname
from departments , employee
where MGRSSN = SSN ;


-- Q2
select Dname,Pname 
from departments ,project 
where project.Dnum =departments.Dnum;


-- Q3
select e.Fname, d.*
from employee e, dependent d
where e.SSN= d.ESSN;


-- Q4
-- A
select Fname,gender
from employee
where Gender='f'
union all
select Dependent_name,sex
from dependent
where sex='f';
-- B
select Fname,Gender
from employee
where Gender='m'
union all
select Dependent_name,sex
from dependent
where sex='m';


-- Q5
select *
 from employee , departments
where employee.SSN = departments.MGRSSN;


-- Q6
select Pname , Pnumber , Plocation
from project 
where City='Cairo' Or City='Alex';


-- Q7
select * from project
where Pname like 'a%';

-- Q8
select * from employee 
where DNO= 30 and salary between 1000 and 2000;

-- Q9
select Fname
from employee , works_for, project
where SSN = Essn and Pno= Pnumber and DNO=10 and hours>=10 and Pname ='AL Rabwah';
 
-- Q10
select Fname from employee 
where SuperSSN = (select SSn from employee where Fname= 'kamel' and Lname='Mohamed');

-- Q11
select Pname , sum(hours)
from project , works_for
where Pnumber = Pno;

-- Q12
select Fname , Pname
from employee , project , departments
where departments.Dnum = DNO and departments.Dnum=project.Dnum;

-- Q13
select * from departments
where Dnum= (select DNO from employee where SSN =(
select min(SSN) from employee ));

-- Q14
select Dname ,min(salary), max(salary) , avg(salary)
from departments, employee
where Dnum= DNO
group by Dnum;

-- Q15 EXISTS and NOT EXISTS
select Lname from employee
where
exists( select * from departments where SSN = MGRSSN)
and not exists(select * from dependent where SSN = ESSN);
 
-- Q16
use sql2; 
select Dnum,Dname, count(SSN) 
 from departments , employee
 where  Dnum=DNO
 group by (DNO)
 having AVG (salary)<
(SELECT  AVG (salary)
FROM departments, employee
WHERE Dnum=DNO
);
  
-- Q17
  select Fname , Pname
  from employee , project, works_for       
  where Pno=Pnumber and SSN=Essn
  order by  Fname , Lname;
  
  -- Q18
  select Pnumber ,Dname , ssn, Lname, address , Bdate
  from project , departments, employee
  where MGRSSN=ssn and DNO= departments.Dnum;
  
-- Q19
select Pnumber from project 
where 
project.Dnum in (
select Dnum 
from employee, departments
where Dnum=DNO and Lname ='Mohamed'
)
     ;
-- Q20
select SSN, fname
from employee
where
 not exists(select * from dependent where SSN = ESSN);
 