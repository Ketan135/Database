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
insert into Person values('Rohit','11',26,'Null')
insert into Person values('Rohit','12',26,'Null')
insert into Person values('Rohit','13',26,'')
update Person set Country='India' where personId=13
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
select * from Person where Country  is Null
select * from Person where Country  is not null
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
---------------------------------------------------------------------------------------------------------------------------------------------------
create table employee(
Emp_Id int ,
First_Name varchar(20),
Last_Name varchar(20),
Salary int,
City varchar(20),
Dept_Name varchar(20)
constraint pk_emp primary key(Emp_Id)
)
sp_help employee
insert into employee values(1,'Ketan','Haridas','30000','Pune','Developer')
insert into employee values(2,'Rohit','Kumar','23000','Pune','Developer')
insert into employee values(3,'Raj','Chavan','30000','Mumbai','Analyst')
insert into employee values(4,'Rahul','Joshi','40000','Pune','HR')
insert into employee values(5,'Sahil','Agrawal','35000','Banglore','Sales')
insert into employee values(6,'Rakesh','Sawant','32000','Mumbai','Delhi')
insert into employee values(7,'Parth','Kulkarni','30000','Pune','QA')
insert into employee values(8,'Nikhil','Bhate','25000','Mumbai','Sales')
insert into employee values(9,'Jeevan','Chavan','30000','Pune','Tech')
insert into employee values(10,'Abhi','Das','30000','Pune','Developer')

select * from employee
select * from employee where Dept_Name='Sales'	
select * from employee where Salary>35000
select * from employee where Salary>35000
select * from employee where Dept_Name in('Pune','Mumbai')
select * from employee where Salary between 25000 and 30000
select * from employee where  First_Name like 'T%'
select * from employee where Last_Name like '_A'
select distinct Dept_Name from employee
select * from employee where Dept_Name not in('HR','Sales')
select count(distinct City)from employee
select count(*) from employee
select sum(Salary) as SumSalary From employee
select avg(Salary) as avgSalary From employee
select max(Salary) as maxSalary From employee
select min(Salary) as minSalary From employee