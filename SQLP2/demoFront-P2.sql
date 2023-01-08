select * from employee;
select * from project;
select * from works_for;

select concat(fname,' ',lname) as 'Full Name',dname
from employee,departments
where dno=Dnum;

select concat(fname,' ',lname) as 'Full Name',dname
from employee right outer join departments
on dno=dnum;


select concat(emp.fname,' ',emp.lname) as 'EMp Full Name',concat(sup.fname,' ',sup.lname) as 'Supervisor name'
from employee emp,employee sup
where emp.SuperSSN=sup.SSN;

select fname,pname
from employee,project,works_for
where ssn=essn
and project.Pnumber=pno
and pname like 'a%';



select fname,gender
from employee
union all
select dependent.Dependent_name,dependent.Sex
from dependent;


-- aggragte function
select max(salary),min(salary),avg(Salary),sum(salary),count(ssn)
from employee
group by dno
having count(ssn)>2;


-- Find the names of the employees  working in “DP1” department.
select fname
from employee,departments
where dno=dnum
and dname='DP1';

-- sub query
select fname
from employee
where dno=(select dnum
			from departments
			where dname='DP1');



--   Display department name with the lowest paid employee
select dname
from departments
where dnum=(select dno
			from employee
			where salary =(select min(salary)
					from employee	));
				





-- Find the names of employees whose salary is greater than the 
  -- salary of the employees in department 10.
select fname
from employee
where salary >(select max(salary)
			from employee
			where dno=20);
   
