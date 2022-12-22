
create table Employee(
id int primary key,Ename varchar(20) not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50),Edept varchar(20) not null,
Esalary double);
#insert multiple row
insert into Employee value
(1,'Bishnupriya',4567231490,'Mumbai','IT',20000.5);
insert into Employee value
(2,'Suchitra',7869453210,'Kolkata','IT',20000.5),
(3,'Shifa',876931490,'Pune','A/C',15000.80),
(4,'Nisha',768594590,'Mumbai','MGR',35000.50),
(5,'Ellina',8765495490,'Kolkata','A/C',10000.50);
#select

# and both condition should be true
select * from Employee where Eaddr ='Kolkata' and Esal = '10000.50';
# or any one condition should be true
select * from Employee where Eaddr = 'Mumbai' and Esal = '35000.50';
#not
select * from Employee where Edept != 'IT';
#in
select * from Employee where Eaddr in('Mumbai','Pune');
#starts with
select * from Employee where Ename like 'E%';
#ends with
select * from Employee where Ename like '%a';
#in between
select * from Employee where Ename like '%f%';
#start and end with
select * from Employee where Ename like 'N%a';
#missing letter
select * from Employee where Eaddr like 'pu_e';
select * from Employee where Eaddr like 'M_R';
select id,Ename,Ephone,Eaddr from Employee;
select * from Employee where id =5;
select * from Employee where Ename='Nisha';
#Distinct (separate)
select distinct id from Employee;
alter table Employee add Comm_pact int after Esalary;
update Employee set Comm_pact = 20 where id = 1;
update Employee set Comm_pact = 15 where id = 2;
update Employee set Comm_pact = 10 where id = 3;
update Employee set Comm_pact = 15 where id = 4;
update Employee set Comm_pact = 25 where id = 5;
#as (add)
select Ename,Esalary,Esalary + 300 as 'Increased_Salary' from Employee;
select Ename,Esalary,Esalary,Comm_pact + 100 as 'Annual_Compensation' from Employee;
select Comm_pact from Employee;
#greater than
select id,Esalary from Employee where Esalary>1500;
#between
select Ename, Esalary from Employee where Esalary between 2000 and 5000;
select * from Employee Where  Esalary = 1000.50 or 5000.50;



-- ======================================================================================



use abhisekdb;
-- create a table department. 
-- take 5 entry for both use sql command only like create, 
-- insert,alter,delete,update,truncate,drop.
-- create
create table department(id int,
name varchar(20),
age int,
roll int,
dept varchar(10));
-- insert
insert into department values
(1,'Salman',54,101,'Math'),
(2,'Hrithik',47,102,'Chem'),
(1,'Shahrukh',55,103,'Phys'),
(1,'Aamir',57,104,'Eng'),
(1,'Mithun',71,105,'CS');
-- delete
delete from department where roll=104;
-- update
update department set dept='IT' where id=1; 
-- truncate
truncate department;
-- drop
drop table department;
select * from department;
--  'abhisekdb.department' doesn't exist	
--  0.000 sec

-- ===========================================================================================

create table Future_Employee(
emp_id int primary key,
Ename varchar(20) not null,
desigation varchar(25) not null,
dept varchar (10) not null,
working_hour varchar (10),
 Esalary double(10,2));
 insert into Future_Employee values
 (1,'Niladri','Engineer','ECE','8',10000),
 (2,'Soumya','MGR','BSC','9',20000),
 (3,'Nisha','SME','BSC','8',30000),
 (4,'Misbha','Engineer','CSE','9',25000),
 (5,'Avishek','Admin','EE','10',15000),
 (6,'Akshay','MGR','IT','11',14000),
 (7,'Shruti','Engineer','12','8',17000),
 (8,'Elina','SME','AIE','7',13000),
 (9,'Sreeprasad','Admin','CE','8',18000),
 (10,'Sourav','Engineer','ECE','6',19000);
 # aggricate function - count
 select dept,count(dept) as 'Total_emp_in_dpt' from Future_Employee group by dept;
 # sum
 select dept,sum(working_hour) as 'total_hrs' from Future_Employee group by dept;
 select dept,sum(working_hour) as 'total_hrs' from Future_Employee where dept = 'ME';
 select dept,sum(Esalary) as 'total_salary' from Future_Employee group by dept;
 select dept,sum(Esalary) as 'total_salary' from Future_Employee where dept = 'EE';
# avarage
select dept,avg(Esalary) as ' avg_dpt_salary' from Future_Employee group by dept;
# min
select Ename,dept,min(Esalary) as ' min_dpt_salary' from Future_Employee group by dept;
select Ename,dept,min(Esalary) from Future_Employee;
# max
select dept,max(Esalary) as ' max_dpt_salary' from Future_Employee group by dept;
select max(Esalary) from Future_Employee where dept = 'EE';
# having
select dept,sum(working_hour) as 'total_hours' from Future_Employee group by dept having sum(working_hour);