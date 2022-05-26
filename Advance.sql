create table Person(
personId int,
personName varchar(20)
constraint pk_Course primary key(personId)
)
alter table Person drop column personId
alter table Person add personId int
alter table Person add constraint pk_person primary key(personId)
select * from Person
alter table Person drop column pesonCity
alter table Person add age int not null
alter table Person add constraint chk_age check(age>=18) 
alter table Person drop constraint chk_age
alter table Person add Country varchar(20) default 'India'
create unique index index_person on Person(PersonId)
drop index Person.index_person
insert into Person values('Ketan','1',26,'India')
insert into Person values('Rohan','2',26,'India')
insert into Person values('Onkar','3',26,'India')
insert into Person values('Akash','4',26,'India')
insert into Person values('Rahul','5',26,'India')
insert into Person values('Pratham','6',26,'India')
insert into Person values('Ravi','7',26,'India')
insert into Person values('Sachin','8',26,'India')
insert into Person values('Santosh','9',26,'India')
insert into Person values('Rohit','10',26,'India')
update Person set age=27 where personId=2
select personName,age from Person where personnId=1
select * from Person where personId<3
select * from Person where personId<>3
select * from Person where personId<=3
select * from Person where personId>3
select * from Person where personId>=3
select distinct Country from Person
select * from Person where personId between 2 and 8
select * from Person where personId in(1,2,3)
select * from Person where personId not in(1,2,3)
select * from Person where Country in('India')
select * from Person where Country not in('India')
select * from Person where Country='India' and age<27
select * from Person where Country='India' or age<27
select * from Person where not Country='India'
select * from Person where personName like 'k%'
select * from Person where personName like '%P'
select * from Person where personName like '%k%'
select * from Person where personName like '_k'
select * from Person where personName like 'R_'
select * from Person where personName like '[kR]%'
select * from Person where personName like '[k-R]%'
-------------------------------------------------------------------------------------------------------------------------------------------------------------
create table Course(
Id int,
Name varchar(20),
constraint pk_Course primary key(Id)
)
alter table Course drop constraint pk_Course
alter table Course add constraint pk_course primary key(Id)

---------------------------------------------------------------------------------------------------------------------------------------------------------------
create table Student(
Roll_No int,
Name varchar(20),
City varchar(20)
)
select * from Student
sp_rename 'Student.Roll_No','RollNo'
alter table Student add constraint DOB unique(Name,contact)
alter table Student drop constraint un_student
select * from Student
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table Orders(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_perrson foreign key(personId) references Person(personId)	
)
sp_help Orders 