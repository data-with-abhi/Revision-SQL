Drop table if exists employees;

Create table employees(
employee_id Serial primary key,
first_name Varchar(100) Not null,
last_name Varchar(100) Not null,
Department Varchar(100),
Salary decimal(10,2) Check(salary>0),
Joining_Date DATE Not Null,
Age INT check(age>=18)
);
Select * from employees;

Insert into employees(first_name,last_name,Department,Salary,Joining_Date,Age)
values('Amit','Sharma','IT',60000.00,'2022-05-01',29),
('Neha','Patel','HR',55000.00,'2021-08-15',32),
('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
('Anjali','Verma','IT',65000.00,'2019-11-22',28),
('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);

-- 1. Retrieve all employees first name and their departments

Select first_name,department from employees;

--2. Update the salary of all employees in the IT department by increasing it by 10%
Update employees
set salary = salary*10
where department = 'IT';

-- 3. Delete all employees who are older than 34 years
Delete from employees
where (age>34);

--4. Add a new column 'email' to the 'employees' table
Alter table employees
Add column email varchar(255);

--Rename the department column to dept_name
Alter table employees
rename column department to dept_name;


--Retrieve the names of employees who joined after January 1,2021
Select first_name,last_name from employees
where joining_date>'2021-01-01';


--Change the data type of the salary column to Integer
Alter table employees
alter column salary type INT;

--List all employees with their age and salary in descending order of salary
Select age,salary from employees Order by salary desc;

-- Update age of employee +1 to every employee
Update employees
set age=age+1;

Select * from employees Order by employee_id ASC;
Alter table employees
rename column dept_name to department;










