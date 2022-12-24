use Abhisekdb;
create table Student_join(
id int primary key,
Fname varchar(15),
Lname varchar(15),
Age int(3),
City varchar(10),
Form_no varchar(2));

insert into student_join values
(1,'Sifa','Das',23,'Hooghly','A1'),
(2,'Abhishek','Sarkar',24,'Kolkata','A2'),
(3,'Sourav','Chakrabarty',25,'Patuli','A3'),
(4,'Atif','Mondal',19,'Nadia','A4'),
(5,'Soumya','Poddar',24,'New Town','A5'),
(6,'Niladri','Biswas',24,'Garia','A6'),
(7,'Nisha','Das',23,'Howrah','A7'),
(8,'Elijah','Rahaman',25,'Behala','A8'),
(9,'Hrangchal','Sarkar',22,'Barasat','A9'),
(10,'Elina','Sahoo',20,'Rampurhat','B1');

create table fees
(Form_no varchar(4),
amount int,
course varchar(15));

insert into fees values
('A1',4000,'java'),
('A2',4000,'java'),
('A3',5000,'Python'),
('A4',3000,'m1'),
('A5',3000,'m1'),
('A6',2000,'Python'),
('A7',5500,'dsa'),
('A8',5500,'dsa'),
('A9',6000,'c++'),
('B1',7000,'c#');

delete from fees where form_no='m1';

select * from student_join;
select * from fees;

select fname,lname,amount,course from student_join
inner join fees on
student_join.form_no=fees.form_no;

-- self join

select s.fname,s.age from student_join s inner join student_join p 
on s.age=p.age and
s.id <> p.id order by s.id;

-- left outer join

select s.form_no,s.fname,f.amount from student_join s 
left join
 fees f 
 on 
 s.form_no=f.form_no;


-- right join 

select s.form_no,s.fname,f.amount from student_join s 
right join
 fees f 
 on 
 s.form_no=f.form_no;

select * from student_join where age > 24;

select * from fees where amount in 
(select amount from fees where course < 'Python');

insert into fees values('B2',9000,'IT');  -- we cant't do it

insert into student_join value(11,'pallabi','bahaduri',26,'kolkata','B2'); -- yes we can

#subquery
select * from student_join where fname in (select Fname from student_join where age>24);
select * from fees where form_no in(select form_no from fees where amount>5500);
select * from student_join where age =(select max(age) from student_join);
select * from student_join where city not in(select city from student_join where city='Nadia');
select * from fees where course !=(select course from fees where course='C++');
select * from fees where amount>(select amount from fees where course='C#'); 
 
insert into fees value(B2,9000,'IT');#cannot update or add a child row;foreign key constraint
insert into student_join value(11,'Pallabi','Bhaduri' ,26,'Kolkata','B2');#can add or update a parent row
#Any
select form_no,Fname from Student_join where form_no =  any(select form_no from fees);
#All
select form_no,Fname from student_join where form_no < All(select form_no from fees);

