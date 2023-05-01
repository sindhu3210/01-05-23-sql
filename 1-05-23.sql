show databases;-- gets all the databases present in the schema

select * from student;

-- update student set student_name="sree" where student_contact=630932;

select * from rgm1;

update rgm1 set College="srec" where Address="knl"; 

update rgm1 set Address ="hyd" where Session="python";

select * from student;

create table test(student_id int,Name varchar(40),marks int);

select * from test;

insert into test select * from student;-- to copy the data from one table to another

-- truncate is used to delete the data but not the table

-- delete command is used to delete the data as well as table

truncate table test;

delete from student where Name ="sindhu";-- deletes entire row

drop table rgm;-- deletes the table and its data

drop table test;

alter table student rename column Name to student_name;

alter table rgm1 rename to rgm; -- changes the table name

select * from rgm;

select * from student;

create database sindhu;

show databases;

drop database sindhu; -- to drop the database

alter table student add Address varchar(40); -- for adding a new column

update student set Address="nandyal";

alter table student modify column Address varchar(50); 

alter table student drop column marks; -- to delete a column

alter table student add college varchar(30);

update student set college="rgm";

alter table student drop column Address,drop column college;-- to remove multiple column










