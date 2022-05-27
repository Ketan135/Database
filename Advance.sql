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
select City,count(Emp_Id) as EmpCount from employee group by City
select * from employee
select Salary,Salary=Salary*0.12 from employee
--------------------------------------------------------------------------------------------------------------------------
create table employee1(
Emp_Id int ,
Name varchar(20),
Salary int,
City varchar(20),
Dept_Id int,
Dept_Name varchar(20)
constraint pk_emp1 primary key(Emp_Id)
)
	insert into employee1 values(1,'Ketan',30000,'Pune',1,'Developer')
	insert into employee1 values(2,'Rohit',23000,'Pune',1,'Developer')
	insert into employee1 values(3,'Raj',30000,'Mumbai',2,'Analyst')
	insert into employee1 values(4,'Rahul',40000,'Pune',3,'HR')
	insert into employee1 values(5,'Sahil',35000,'Banglore',4,'Sales')
	insert into employee1 values(6,'Rakesh',32000,'Mumbai',1,'Developer')
	insert into employee1 values(7,'Parth',30000,'Pune',5,'QA')
	insert into employee1 values(8,'Nikhil',25000,'Mumbai',4,'Sales')
	insert into employee1 values(9,'Jeevan',30000,'Pune',9,'Tech')
	insert into employee1 values(10,'Abhi',30000,'Pune',1,'Developer')

select name "Name" from employee1
select distinct Dept_Id FROM employee1
select * from employee1 order by Name desc
select Salary,Salary=Salary*0.12 from employee1
select sum(Salary) from employee1
select max(Salary) as maxSalary From employee1
select min(Salary) as minSalary From employee1
select count(*)from employee1
select count(distinct Dept_Id)from employee1
select top 5 * from employee1
select upper(Name) from employee1
select City,count(Emp_Id) as EmpCount from employee1 group by City
select distinct City from employee1
select * from employee1 where City='pune'
select * from employee1 where not City= 'Pune'
select * from employee1 where Emp_Id =1
select * from employee1 where City='Pune'and Dept_Id=1
select * from employee1 where City ='Pune'OR City='Mumbai'
select * from employee1 order by City asc
select * from employee1 order by City desc
select * from employee1 order by Name,City
select * from employee1 where Dept_Id is null
select * from employee1 where Dept_Id is not null
delete from employee1 where City ='Banglore'
select * from employee1
select avg(Salary) as avgSalary From employee1
select min(Salary) as minSalary From employee1
select max(Salary) as maxSalary From employee1
select * from employee1 where City like 'P%'
select * from employee1 where City like '%i'
select * from employee1 where City like '_u%'
select * from employee1 where City like 'P%e'
----------------------------------------------------------------------------------------------------------------------------
select * from Person
select * from Orders
alter table Orders add productname varchar(20)
alter table Orders add price int

insert into Orders values(1,1001,1,'keyboard',999)
insert into Orders values(2,1002,1,'Mouse',500)
insert into Orders values(3,1003,5,'Laptop',30000)
insert into Orders values(4,1004,5,'Mobile',15000)
insert into Orders values(5,1005,5,'LED',20000)
insert into Orders values(6,1006,9,'headphone',999)
insert into Orders values(7,1007,9,'Mouse',999)

select p.personName,p.country,o.orderNo,o.productname,o.price
from Person p
inner join Orders o on o.personId=p.personId
select p.personName,p.country,o.orderNo,o.productname,o.price
from Person p
left join Orders o on o.personId=p.personId
select p.personName,p.country,o.orderNo,o.productname,o.price
from Person p
right join Orders o on o.personId=p.personId

create table manager(
id int primary key,
name varchar(20)
)
select * from employee1
alter table employee1 add managerid int
update employee1 set managerid=1 where Emp_Id in(2,3)
update employee1 set managerid=4 where Emp_Id in(5,6,7,8)
update employee1 set managerid=9 where Emp_Id in(10)

select e1.Name as empName,e2.name as managerName
from employee1 e1,employee1 e2
where e1.managerid=e2.Emp_Id

create table Study(
studId varchar(5),
courseId varchar(5),
year int
)
insert into Study values('s1','c1',2016)
insert into Study values('s2','c2',2017)
insert into Study values('s1','c2',2017)
select * from Study

select s.studId,s.courseId,s.year
from Study s,Study sa
where s.studId=sa.studId and s.courseId<>sa.courseId	

create table employee2(
Emp_Id int ,
Name varchar(20),
Salary int,
City varchar(20),
constraint pk_emp2 primary key(Emp_Id)
)

insert into employee2 values(1,'Ketan',30000,'Pune')
insert into employee2 values(2,'Rohit',23000,'Pune')
insert into employee2 values(3,'Raj',30000,'Mumbai')
insert into employee2 values(4,'Rahul',40000,'Pune')
insert into employee2 values(5,'Sahil',35000,'Banglore')
insert into employee2 values(6,'Rakesh',32000,'Mumbai')
insert into employee2 values(7,'Parth',30000,'Pune')
insert into employee2 values(8,'Nikhil',25000,'Mumbai')
insert into employee2 values(9,'Jeevan',30000,'Pune')
insert into employee2 values(10,'Abhi',30000,'Pune')

alter table employee2 


create table dept(
did int primary key,
dname varchar(20)
)
insert into dept values(1,'Sales')
insert into dept values(2,'Developer')
insert into dept values(3,'Analyst')
insert into dept values(4,'QA')
insert into dept values(5,'Sales')
insert into dept values(6,'Developer')
insert into dept values(7,'HR')
insert into dept values(8,'QA')
insert into dept values(9,'HR')
insert into dept values(10,'Support')


select * from employee2
update employee2 set did=1 where Emp_Id in(2,3)
update employee2 set did=4 where Emp_Id in(5,6,7,8)
update employee2 set did=9 where Emp_Id in(10)

select e.Emp_Id,e.Name,e.Salary,e.City,e.did,d.dname
from employee2 e inner join dept d on e.did=d.did 

select e.Emp_Id,e.Name,e.Salary,e.City,d.did,d.dname
from employee2 e 
inner join dept d on e.did = d.did
where d.dname='HR'
order by salary desc

select e.Name,d.did,d.dname
from employee1 e 
inner join dept d on e.Dept_Id = d.did
where d.dname='sales'
order by Name

select e.Name,e.Salary,d.did,d.dname
from employee2 e 
inner join dept d on e.did = d.did
order by Name,Salary
-----------------------------------------------------------------------------------------------------------------
select * from employee1
select Country,count(personId)from Person group by Country having count(personId)>5

select Country,count(personId)from Person group by Country 
having Country in ('India','USA')order by count(personId)

select Country,count(personId)from Person group by Country having count(personId)>5
select Dept_Name,count (Dept_Id)as empcount from employee1 
group by Dept_Name having Dept_Name in('HR','Sales')
order by count(Dept_Id)
------------------------------------------------------------------------------------------------------------------
select SUBSTRING(Name,0,3)as tempname from employee1 where Emp_Id=2
select CONCAT(Name,' ',City)as info from employee1
select Name,LEN(Name)as length from employee1
select UPPER(Name)as name from employee1
select lower(Name)as name from employee1
select ROUND(Salary,2)as Salary from employee1
select CAST(Salary as varchar(20))from employee1
select REVERSE(Name)as reversename from employee1
select REPLACE(Name,'Raj','vijay')as info from employee1 where Emp_Id=3
-------------------------------------------------------------------------------------------------------------------
create table salesman(
sId int primary key,
sName varchar(20),
sCity varchar(20),
sCommision int
)
insert into salesman values(1,'Raj','Pune',200)
insert into salesman values(2,'Raju','Mumbai',200)
insert into salesman values(3,'Tushar','Delhi',200)
insert into salesman values(4,'Sagar','Pune',200)
insert into salesman values(5,'Ashish','Banglore',200)


create table customer(
cId int primary key,
cName varchar(20),
cCity varchar(20),
cGrade varchar(5),
foreign key(cId) references salesman(sId)	
)
insert into customer values(1,'Vishal','Pune','A+')
insert into customer values(2,'Sumit','Mumbai','B++')
insert into customer values(3,'Onkar','Bakglore','A')
insert into customer values(4,'Shivam','Pune','B')
insert into customer values(5,'Santosh','Dalhi','A+')


create table orders(
oId int,
Purchase_Amount int,
date date,
foreign key(oId) references customer(cId),
foreign key(oId) references salesman(sId)
)
insert into orders values(1,500,GETDATE())
insert into orders values(2,700,GETDATE())
insert into orders values(3,850,GETDATE())
insert into orders values(4,400,GETDATE())
insert into orders values(5,200,GETDATE())

select o.oId,c.cName,s.sName,o.purchase_Amount
from orders o
inner join customer c on c.cId=o.oId
inner join salesman s on s.sId=o.oId

select o.oId,c.cName,s.sName
from orders o
inner join customer c on c.cId=o.oId
inner join salesman s on s.sId=o.oId

select s.sId,s.sName
from orders o 
inner join salesman s on s.sId=o.oId
order by sName asc

select s.sId,s.sName
from orders o 
inner join salesman s on s.sId=o.oId
order by sName desc

select c.cName,c.cGrade
from orders o
inner join customer c on c.cId=o.oId

select o.oId,o.purchase_Amount,o.date
from orders o
inner join customer c on c.cId=o.oId
inner join salesman s on s.sId=o.oId

select o.oId,o.purchase_Amount
from orders o
inner join customer c on c.cId=o.oId
inner join salesman s on s.sId=o.oId

select c.cId,c.cGrade,c.cName,c.cName,o.oId
from orders o
inner join customer c on c.cId=o.oId
inner join salesman s on s.sId=o.oId

select o.oId,o.purchase_Amount
from orders o
left join customer c on c.cId=o.oId
left join salesman s on s.sId=o.oId

select o.oId,c.cName,s.sName,o.purchase_Amount
from orders o
left join customer c on c.cId=o.oId
left join salesman s on s.sId=o.oId

select o.oId,date,c.cName,c.cGrade,c.cCity,s.sName,s.sCity,s.sCommision,o.purchase_Amount
from orders o
left join customer c on c.cId=o.oId
left join salesman s on s.sId=o.oId

select o.oId,date,c.cName,c.cGrade,c.cCity,s.sName,s.sCity,s.sCommision,o.purchase_Amount
from orders o
right join customer c on c.cId=o.oId
right join salesman s on s.sId=o.oId

select c.cId,c.cName,c.cCity,o.oId
from orders o 
inner join customer c on c.cId = o.oId
where c.cCity='Pune'

select c.cId,c.cName,c.cGrade
from orders o 
inner join customer c on c.cId = o.oId
where c.cGrade='A+'

select c.cId,c.cName,c.cGrade
from orders o 
inner join customer c on c.cId = o.oId
where c.cGrade='B++'

select c.cId,c.cName,c.cCity,c.cGrade
from orders o 
inner join customer c on c.cId = o.oId
inner join salesman s on s.sId=o.oId
order by cName asc

select c.cId,c.cName,c.cCity,c.cGrade
from orders o 
inner join customer c on c.cId = o.oId
inner join salesman s on s.sId=o.oId
order by cName desc

select s.sId,s.sName
from orders o 
inner join salesman s on s.sId=o.oId
order by sName asc

select s.sId,s.sName
from orders o 
inner join salesman s on s.sId=o.oId
order by sName desc

select c.cId,c.cName,o.purchase_Amount
from orders o
inner join customer c on c.cId = o.oId
order by Purchase_Amount










