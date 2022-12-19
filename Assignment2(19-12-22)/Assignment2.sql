-- 1. Create a table EMP1 with following structure.
-- ID Name Basic Designation Age
-- Column Description: -
-- ID Number (2)
-- Name Varchar2 (10)
-- Basic Number (6, 2)
-- Designation Varchar2 (10)
-- Age Number (2)
-- use abhisekdb;

create table EMP1(ID int, name varchar(10), Basic double,Designation varchar(10),Age int);

-- select * from EMP1

-- 2. Change the data type of the field Basic from float to integer with required size of the
-- EMP1 table.

alter table EMP1 modify Basic int;

-- 3. Change the field size of Name column of the EMP1 table from 10 to 15. 

alter table EMP1 modify name varchar(15);

-- 4. Create another table EMP_trainee with the same (changed) structure. The column ID to
-- be renamed as Emp_id in the EMP_trainee table.

select * from EMP1;
alter table EMP1 rename to EMP_trainee;
alter table EMP_trainee change column id  Emp_id integer;

-- 5. Insert following data in EMP1 table: -
-- (1, Rohit, 6700, Manager, 24)
-- (2, Sunil, 6200, Engineer, 27)
-- (3, Payal, 6300, Engineer, 25)
-- (4, Kunal, 6700, Trainee, 28)
-- (5, Sunita, 6230, Trainee, 26)
-- (6, Bimal, 7000, Trainee, 25)

create table EMP1(ID int, name varchar(10), Basic double,Designation varchar(10),Age int);

insert into EMP1 values
 (1, 'Rohit', 6700, 'Manager', 24),
 (2, 'Sunil', 6200, 'Engineer', 27),
 (3, 'Payal', 6300, 'Engineer', 25),
 (4, 'Kunal', 6700, 'Trainee', 28),
 (5, 'Sunita', 6230, 'Trainee', 26),
 (6, 'Bimal', 7000, 'Trainee', 25);
 
--  select * from emp1- 


-- 6. Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table.

insert into EMP_trainee select * from emp1;
select * from emp_trainee;

-- 7. Display the structure of both the tables.

desc emp1;
desc emp_trainee;


-- 8. Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) to the
-- EMP1 table and add data for the Skills and DOJ columns according to your own wish. 

-- alter table emp1 add column skills varchar(10);
-- alter table emp1 add column DOJ date;
 select * from emp1;

--  use abhisekdb

update emp1 set skills ='java' where id=1;
update emp1 set skills ='C' where id=2;
update emp1 set skills ='C++' where id=3;
update emp1 set skills ='python' where id=4;
update emp1 set skills ='rubi' where id=5;
update emp1 set skills ='SQL' where id=6;

update emp1 set doj ='2017-06-15' where id=1;
update emp1 set doj ='1999-06-25' where id=2;
update emp1 set doj ='1997-07-05' where id=3;
update emp1 set doj ='1998-11-15' where id=4;
update emp1 set doj ='1994-03-13' where id=5;
update emp1 set doj ='1993-12-19' where id=6;

-- 9. Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.

update emp_trainee set Designation='Programmer _Trainee';

-- here error will occers 

-- 0	18	17:45:27	update emp_trainee set Designation='Programmer _Trainee'	
-- Error Code: 1406. Data too long for column 'Designation' at row 1	0.000 sec

-- 10. Update more than one row in one query in EMP1 table

update emp1 set designation ='HR' where age=25;

-- two rows changed 

-- 11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5.

alter table emp1 modify column id varchar(5);

-- 12.Display both the tables EMP1 and EMP_trainee.

 select * from emp1;
select * from emp_trainee;

-- 13.Rename the column Age of EMP1 table to Age_in_Years.

alter table emp1 change column age age_in_Years int;

-- 14.Delete the details of all the trainees from the EMP1 table.

-- 14.Delete the details of all the trainees from the EMP1 table.

delete from emp1;

-- 15.Drop the Age column from the EMP_trainee table.

alter table EMP_trainee drop column age;

-- 16.Drop two columns in one query from EMP_trainee table.

alter table EMP_trainee drop column basic, drop column Designation;


-- 17.Rename the table EMP to EMP_Mgr_Engr.

alter table EMP1 rename EMP_Mgr_Engr;

-- 18.Drop the table EMP_Trainee.

-- drop table emp_trainee


-- 19.Truncate EMP_Mgr_Engr table.

truncate EMP_Mgr_Engr;

-- 20.Recover the data of EMP_Mgr_Engr.

-- rollback EMP_Mgr_Engr;









