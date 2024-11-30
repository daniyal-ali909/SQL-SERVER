create database "2390B2";

create table employee (
  empId int primary key identity(1,1),
  empName varchar(255) Not Null,
  designation varchar(255) Not Null,
  salary int Not Null,
  city varchar(70) Not Null,
  deptId int
);

select * from employee;

insert into employee(empName, designation, salary, city, deptId) values
('Daniyal', 'Mern Developer', 130000, 'Khi', null),
('Hunain', 'Full Developer', 95000, 'Isb', null),
('Sami', '.Net Developer', 75000, 'Lhr', null),
('Hussain', 'Js Developer', 65000, 'Khi', null),
('Huzaifa', 'Angular Developer', 55000, 'Isb', null);

select distinct city from employee;
--update
update employee set salary=40000 where city='Lhr';

update employee set empName='Ahsan', designation='Wordpress Developer' where empId=2;

--delete
delete from employee where empName='Ahsan';

truncate table employee;

drop table empolyee;

--where clause

select empName, designation from employee where designation='Mern Developer';

--Not 
select empName, designation from employee where NOT designation='Angular Developer';

--And
select empName, designation, salary from employee where designation = 'Angular Developer' And salary <= 100000;

select empName, designation, salary from employee where Not designation = 'Angular Developer' And salary <= 100000;

--Or
select empName, designation, salary from employee where Not designation = 'Angular Developer' Or salary <= 100000;

select empName, designation, salary from employee where Not designation = 'Angular Developer' Or salary <= 100000;

--Clauses Order by
select * from employee order by empId asc;

select * from employee order by empName desc;

--Top
select top 2 * from employee;

select top 50 percent * from employee;

--aggregate functions
select * from employee;

select count (empName) as total_emp from employee;

select min (salary) as min_salary from employee;

select max(salary) as ma_salary from employee;

select sum (salary) as sum_salary from employee;

select avg (salary) as avg_salary from employee;

select concat (empName,  'is assigned as a', designation, 'has a salary about ', salary) as emp_details from employee;

--sub Queries
select * from employee where salary > (select avg (salary) as avg_salary from employee);

select * from employee where salary > (select avg (salary) as avg_salary from employee) select max(salary) as ma_salary from employee;

--Group by clause
select city, count (empId) as worker from employee group by city; 

select city, sum (salary) as worker from employee group by city;

select city, max (salary) as worker from employee group by city;