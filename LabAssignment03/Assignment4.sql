use abhiseklabdb;

-- 1. Create the following tables with the constraints mentioned:
--  Note: the data type and size should be given in relevance with the data to
-- be inserted. Constraint name are not required to be given for this assignment.



create table customer 
(cust_id varchar(10) not null primary key,
Fname varchar(15) not null,
Lname varchar(15),
Area varchar(15) not null,
Phone bigint(10)
);


create table movie
(Mv_no int not null primary key,
Cust_id varchar(10),
Title varchar(30) not null,
Star varchar(5) not null,
Price int check (price >=100 and price <=250),
foreign key (Cust_id) references customer(cust_id)
);

insert into customer values
('A01','Ivan','Ross','SA',6125467),
('A02','Vandana','Ray','MU',5560379),
('A03','Pramada','Jauguste','DA',4560389),
('A04','Basu','Navindi','BA',6125401),
('A05','Ravi','Shridhar','NA',null),
('A06','Rukmini','Aiyer','Gh',5125274);

drop table movie;

insert into Movie values
(1,'A02','Bloody','JC',181),
(2,'A04','The Firm','TC',200),
(3,'A01','Pretty Woman','RG',151),
(4,'A06','Home Alone','MC',150),
(5,'A05','The Fugitive','MF',200),
(6,'A03','Coma','MD',100),
(7,'A02','Dracula','GO',150),
(8,'A06','Quick Change','BM',100),
(9,'A03','Gone with the Wind','CB',200),
(10,'A05','Carry on Doctor','LP',100);


-- 2. Prove that entity integrity constraint is ensured by both the tables. (2 conditions to
-- be checked).
 -- for customer table 
 
insert into customer values
(null,'Ivan','Ross','SA',6125467);  -- error because primary key can't be null
 -- for movie table
 
 insert into Movie values 
(null,'A02','Bloody','JC',181); --  -- error because primary key can't be null

-- 3. Prove that referential integrity constraint is ensured by both the tables.

insert into Movie values
(20,'A11','Bloody','JC',181);  -- the movie table refer to the customer table so, 
-- due to the referential integrity constraint rule the cust_id which is not present inside the customer table that's why
-- the error will occur.

-- 4. Prove that domain integrity constraint is ensured by the Movie table.

insert into Movie values
(Ab,'A02','Bloody','JC',188);
-- due to damain intigiry constraint we can't put character value in the Mo_no column 
-- because this column only contain integer value 

-- 5. Display the movie titles, whose price is greater than 100 but less than 200.

select title from movie where price > 100 and price < 200;

-- 6. Display the cust_id who have seen movies having stars as
-- either JC or TC or MC.

select cust_id from movie where star in ('JC','TC','MC');


 -- 7. Display the details of those customers who have an A in their area name.

select * from customer where area like '%A%';

-- 8. Display the movie titles, whose price is within 180 and the movie titles are of exactly
-- 6 characters.

select title from movie where price <=180 and title like '______';

-- 9. Display the movie name, their original prices and the prices after 10% increment.
-- Give alias name to the incremented price column.

select title, price, (price+price*10/100) as incremented_price from movie;

-- 10.Display all the customer details in the following way:
-- ‘Ivan Ross stays in SA and his phone number is 6125467.’

select concat(fname," ",lname," ","stays in ",area," ","and his phone number is ",phone) from customer where fname='Ivan' and lname='Ross' and phone =6125467;

   -- Ivan Ross stays in SA and his phone number is 6125467 ==> output

-- 11.Add a not null constraint to the Lname field in Customer.

alter table customer modify Lname varchar(15) not null; 

-- 12.Display the customer’s name whose phone number is not recorded.

select concat(fname," ",lname) as fullname from customer where phone is null;

update customer set phone=45123658 where cust_id='A05';

-- 14.Display the unique customer ids from movie table.

select distinct cust_id from movie;

-- 15 Remove the not null constraint from Star column in movie table.
alter table movie modify star varchar(5);

-- 16.Delete any row from the Customer table. If you cannot delete, then note the error
-- message displayed.

delete from customer where cust_id='A01';

-- here we cannot delete this row becaue this cust_id present in forign key table

-- 12:27:33	delete from customer where cust_id='A01'
-- Error Code: 1451. Cannot delete or update a parent row: 
--     a foreign key constraint fails 
--     (`abhiseklabdb`.`movie`, CONSTRAINT `movie_ibfk_1` FOREIGN KEY 
--     (`Cust_id`) REFERENCES `customer` (`cust_id`))	0.000 sec

-- 17.Delete any row from the Movie table. If you cannot delete, then note the error
-- message displayed.

delete from movie where cust_id='A03';  -- it worked finely
delete from movie where cust_id='A01';  -- it worked finely

-- 18.Drop the Customer table. If you cannot drop, then note the error message
-- displayed.

drop table customer;  --  Cannot drop table 'customer' referenced by a foreign key constraint on movie table  

-- 19.Drop the Movie table. If you cannot drop, then note the error message displayed.

drop table movie; -- // successfully run

-- 20.Drop the foreign key from Movie table.

alter table movie drop constraint  ;


