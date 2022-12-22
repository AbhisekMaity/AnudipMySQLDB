USE abhisekdb; # DDL (CREATE, ALTER , DROP, TRUNCATE)
create table employee ( id int primary key,  # Create table table_name
ename varchar(20) not null, 
ephone bigint(11) not null unique, 
eaddr varchar(50), 
sedept varchar(10) not null, 
esalary double);
# insert multiple rows
insert into employee values # insert the value
(1,'Bishnupriya',8311222880,'Mumbai','HR',10000.5),
(2,'Sifa',8451222880,'kolkata','A/C',15000.5),
(3,'Nisha',8311222990,'Pune','MGR',350000.5),
(5,'Elina',8311123560,'Channi','A/C',10000.5),
(4,'Suchitra',8386522880,'mumbai','MCA',10000.5);
select * from employee
# add new column
alter table Student ADD age int after sname;
# modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
alter table Student MODIFY sphone int not null;
# drop column
alter table Student DROP COLUMN sdept;
# change column name
alter table Student CHANGE COLUMN age sage int;
# rename table name
alter table Student RENAME TO student_details;
# insert single row
insert into student_details values
(10,'Pallabi',27,785955229,'pallabi@gmail.com','kolkata','MSC');
truncate student_details; # delete rows
drop table student_details; # delete whole table
# DML --- INSERT, UPDATE, DELETE
update student_details set sage = 20 where ID = 1;
update student_details set sage = 23 where ID = 2;
update student_details set sage = 25 where ID = 3;
update student_details set sage = 22 where ID = 4;
update student_details set sage = 26 where ID = 5;
update student_details set sage = 22 where ID = 6;
update student_details set sage = 25 where ID = 7;
update student_details set sage = 27 where ID = 8;
update student_details set sage = 21 where ID = 9;
alter table student_details add fees double after squalification;
update student_details set fees = 1000.50 where ID = 1;
update student_details set fees = 1000.50 where ID = 2;
update student_details set fees = 1000.50 where ID = 3;
update student_details set fees = 1000.50 where ID = 4;
update student_details set fees = 1000.50 where ID = 5;
update student_details set fees = 1000.50 where ID = 6;
update student_details set fees = 1000.50 where ID = 7;
update student_details set fees = 1000.50 where ID = 8;
update student_details set fees = 1000.50 where ID = 9;
update student_details set fees = 1000.50 where ID = 10;
update student_details set squalification = 'BCA' where sname ='ARNAB';
update student_details set fees = 2000.50;
update student_details set sadd= 'mumbai' where sname ='puja';
# delete any specific row
delete from student_details where sname='pallabi'; 
# delete any specific column 
alter table student_details DROP COLUMN fees;
