USE abhisekdb;
create table Student (id int primary key,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(50) not null unique, 
sadd varchar(50),
squlification varchar(10) not null,
sdept varchar(20));

drop table student
select * from student;

insert into Student values
(1,'RANOJOY',8311122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',8354622288,'arnab@gmail.com','delhi','B.Tech','CIVIL'),
(4,'PUJA',8347222228,'puja@gmail.com','pune','MCA','IT'),
(5,'ABIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',8349992288,'akash@gmail.com','goa','B.Tech','MECHANICAL'),
(7,'RANOJOY',8348215678,'abhisek@gmail.com','darjeeling','MSc','IT'),
(8,'BIDISHA',8356895241,'bid@gmail.com','jemmu and Kashmir','BE','CIVIL'),
(9,'RANOJOY',8348002888,'tiyasa@gmail.com','chennai','BSc','CS');

# add new column
alter table Student add age int after sname;
# modify datatype size 
alter table student modify squlification varchar(20) not null;

# modify constraint 
alter table student modify sphone int not null;

# drop column
alter table student drop column sdept;

# change column name
alter table student change column age sage int;

# rename table name

alter table student rename to student_details;

# insert single row

select * from student_details;

insert into student_details values
(10,'Pallabi',27,785955229,'pallabi@gmail.com','kolkata','MSC');

truncate student_details; # delete rows

drop table student_details;

alter table Student_details add age int after sname;


# DML Data Manupulation Language 

update student_details set age =20 where id =1;
update student_details set age =21 where id =2;
update student_details set age =22 where id =3;
update student_details set age =23 where id =4;
update student_details set age =24 where id =5;
update student_details set age =25 where id =6;
update student_details set age =26 where id =7;
update student_details set age =27 where id =8;
update student_details set age =28 where id =9;
update student_details set age =27 where id =10;
alter table student_details add fees double after squlification; 
update student_details set fees =1000.50 where id=1;
update student_details set fees =1000.50 where id=2;
update student_details set fees =1000.50 where id=3;
update student_details set fees =1000.50 where id=4;
update student_details set fees =1000.50 where id=5;
update student_details set fees =1000.50 where id=6;
update student_details set fees =1000.50 where id=7;
update student_details set fees =1000.50 where id=8;
update student_details set fees =1000.50 where id=9;
update student_details set fees =1000.50 where id=10;










