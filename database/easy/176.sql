select (select distinct Salary from Employee order by Salary desc limit 1 offset 1) as SecondHighestSalary;

--

select ifnull((select distinct Salary from Employee order by Salary desc limit 1 offset 1), null) SecondHighestSalary;

--

select max(salary) SecondHighestSalary
from Employee
where Salary < (select max(Salary) from Employee);