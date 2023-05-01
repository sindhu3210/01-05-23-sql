create database exercise;
select * from customer;
create table customer(id int primary key not null,name varchar(20),grade int,salesmam_id int );
alter table customer add city varchar(20);
insert into customer values(23,"anne",100,123,"hyd"),
(27,"beth",111,7899,"knl"),
(34,"steve",167,3465,"ts"),
(54,"el",213,4534,"knl"),
(65,"rio",145,6522,"kdp"),
(67,"mathew",564,9807,"vzg"),
(72,"col",321,7890,"ts");

-- write a sql querry to find the details of the customer whose grade are above 150
select * from customer where grade >=150;

--  write a sql querry to find the details of the customer whose grade are above 150 in ascending order
select * from customer where grade>=150 ORDER BY grade;

-- write sql querry to find out the details of the customer who are living in hyd and grade<=150
select * from customer where city="hyd" and grade<=150;

-- write sql querry to find out the details of the customer who are living in hyd and grade>=150
select * from customer where city="hyd" and grade>=150;

-- write a sql statement to find out thr details of the customer who are from hyderabad city or grade above 100
select * from customer where city="hyd" or grade>=150;

-- write sql querry to find out the details of the customer who are living in knl or who donot have a grade more than 100
select * from customer where city="knl" or not grade>=150;

-- write sql querry to find out the details of the customer who donot belong to the city knl or have a grade that exceeds 200
select * from customer where city != "knl" or grade>=200;
select * from customer where not city = "knl" or grade>=200;
select * from customer where city != "knl" or not grade<200;

-- write sql querry to find out the details of the customer who donot belong to the city knl and have a grade that exceeds 200
select * from customer where city != "knl" and grade>=200;


-- we have to find the details of order excluding the date 30 april 2023 and salesman id more than 3000 or purchase amount>1000
drop table orders;
 create table orders(
 order_id int,amount int,order_date date,salesmam_id int);
 
 insert into orders values(123,1040,'2023-04-23',123),
 (324,2345,'2023-04-24',7899),
 (432,4500,'2023-04-25',6522),
 (345,2456,'2023-04-25',3465),
 (241,923,'2023-04-26',4534);
 
 select * from orders;
 
 -- find the order details excluding date 2023-04-25 and salesman id >=200 or purchase amount>1000
 select * from orders where not order_date="2023-04-25" and salesmam_id>3000 or amount>1000;
 
 create table salesman(
 salesmam_id int primary key,name varchar(30),city varchar(30),commissioin float);
 
 select * from salesman;

 insert into salesman values(123,'sindhu','knl',0.23),(7899,'honey','hyd',0.48),(3465,'smith','kdp',0.32),(4534,'beth','vzg',0.43);
 
 -- find the salesman details whose commission are with the range of 0.23 and 0.43
 select * from salesman where commissioin between 0.23 and 0.43;
 
 -- find the salesman details whose name starts with s 
 select * from salesman where name like "s%";
 
 -- create a new column address,insert some data in the address and display all those in descending order
 
 alter table salesman add address varchar(30);
 
update salesman set address="ndl" where name="sindhu";
update salesman set address="hyd" where name="smith";
update salesman set address="kerala" where name="beth";
update salesman set address="tn" where name="honey";

select * from salesman order by address desc;

alter table salesman rename column address to salesman_address;
alter table salesman rename column salesmam_id to salesman_id;