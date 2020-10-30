--UC2 Create Database
create table Employee_payroll(

id int NOT NULL identity(1,1) PRIMARY KEY,
name VARCHAR(50) NOT NULL,
salary DECIMAL(10,2) NOT NULL,
start_Date DATETIME NOT NULL ) ;

--UC3 Insert the data into database
insert into Employee_payroll values('venkey',50000,'2020-10-18');

insert into Employee_payroll values('Rajesh',35000,'2019-03-26');

insert into Employee_payroll values('Kajal',23000,'2019-04-09');
insert into Employee_payroll values('Rashmi',70000,'2018-05-11');

--UC4 Retrieve all the data from the table
select * from Employee_payroll;


--UC5.1 Salary of particualr employee

select salary from Employee_payroll where name='Rajesh';

--UC5.2 Details of employee in a particualr date range

select * from Employee_payroll where start_Date between CAST('2019-01-01' as date) and GETDATE();


--UC6.1 Add the gender column to the table 
alter table Employee_payroll add gender varchar(2)  not null default  'M' ;

--UC6.2 update the gender based on their name
update Employee_payroll set gender='F' where name in ('Kajal','Rashmi');


--UC7 find Sum Avg Min and Max salaries 
select gender,sum(salary) as SumOfSalaries from Employee_payroll group by(gender);
select gender,avg(salary) as AvgOfSalaries from Employee_payroll group by(gender);
select gender,max(salary) as MaxOfSalary from Employee_payroll group by(gender);
select gender,min(salary) as MinSalary from Employee_payroll group by(gender);

select gender,count(*) as NumberOfPeople from Employee_payroll group by gender;

alter table Employee_payroll add 
phoneNumber varchar(255),
empAddress varchar(255) default 'MUMBAI' ,
department varchar(255) 
;

select empAddress from Employee_payroll;