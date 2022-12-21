use abhisekdb;

create table customer(Cust_id varchar(5), 
Fname varchar(15),
 Lname Varchar(15), 
 Area  Char (2), 
 Phone numeric(10),
 DOB Date,
 Payment numeric(6,2));
-- 2. Display the structure of the table you have created.
desc customer; 


insert into CUSTOMER VALUES 
-- ('A01','Ivan','Ross','SA',6125467, "1986-01-15",800.50),
('A02','Vandana','Ra','MU',5560379,"1987-12-20",1000.75),
('A03','Pramada','Jauguste','DA',4560389,"1967-07-25",500.00),
('A04','Basu','Navindi','BA',6125401,"1956-02-29",860.00),
('A05','Ravi','Shridhar','NA',null,"1989-02-15",500.50),
('A06','Rukmini','Aiyer','GH',5125274,"1987-07-23",1500.50);

-- 3. Display the data of the created table.

select * from customer

--  5. Display the data in the table
select * from customer

-- 6. Update the phone numbers of customer A02 and A04.
update customer set phone =9635428536 where cust_id='A02';
 update customer set phone=9656851242 where cust_id='A04';
 
--  7. Update the date of birth of customer A03 and A05.

update customer set dob ='2000-08-20' where cust_id='A03';
 update customer set dob='1999-09-29' where cust_id='A05';

-- 8. Display the updated table.
-- select  * from customer

-- 9. Delete 2 rows from the table for customers A01 and A05
delete from customer where cust_id in('A01','A05');
-- 10. Delete all the rows from the table
delete from customer

-- 11. Insert 5 records according to your own wish
insert into CUSTOMER VALUES 
-- ('A01','Ivan','Ross','SA',6125467, "1986-01-15",800.50),
('A02','Vandana','Ra','MU',5560379,"1987-12-20",1000.75),
('A03','Pramada','Jauguste','DA',4560389,"1967-07-25",500.00),
('A04','Basu','Navindi','BA',6125401,"1956-02-29",860.00),
('A05','Ravi','Shridhar','NA',null,"1989-02-15",500.50),
('A06','Rukmini','Aiyer','GH',5125274,"1987-07-23",1500.50);

-- 12. Update one record based on any criteria according to your own wish.
update customer set dob ='2000-08-20' where cust_id='A03';

-- 13. Delete any 1 record from the table based on particular criteria.

delete from customer where Cust_id='A06';

