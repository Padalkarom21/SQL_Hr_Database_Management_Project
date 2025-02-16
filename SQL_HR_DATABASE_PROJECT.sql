use [SQL_Project]

CREATE TABLE regions (
region_id INT PRIMARY KEY,
region_name VARCHAR (25) DEFAULT NULL
);INSERT INTO regions(region_id,region_name)
VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name)
VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name)
VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name)
VALUES (4,'Middle East and Africa');CREATE TABLE countries (
country_id CHAR (2) PRIMARY KEY,
country_name VARCHAR (40) DEFAULT NULL,
region_id INT NOT NULL,
FOREIGN KEY (region_id) REFERENCES regions (region_id) ON DELETE
CASCADE ON UPDATE CASCADE
);INSERT INTO countries(country_id,country_name,region_id)
VALUES ('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('ZW','Zimbabwe',4);

CREATE TABLE locations (
location_id INT PRIMARY KEY,
street_address VARCHAR (40) DEFAULT NULL,
postal_code VARCHAR (12) DEFAULT NULL,
city VARCHAR (30) NOT NULL,
state_province VARCHAR (25) DEFAULT NULL,
country_id CHAR (2) NOT NULL,
FOREIGN KEY (country_id) REFERENCES countries (country_id) ON DELETE
CASCADE ON UPDATE CASCADE
);
	
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id)
VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');

CREATE TABLE jobs (
job_id INT PRIMARY KEY,
job_title VARCHAR (35) NOT NULL,
min_salary DECIMAL (8, 2) DEFAULT NULL,
max_salary DECIMAL (8, 2) DEFAULT NULL
);

INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (19,'Stock Manager',5500.00,8500.00);CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR (30) NOT NULL,
location_id INT DEFAULT NULL,
FOREIGN KEY (location_id) REFERENCES locations (location_id) ON DELETE
CASCADE ON UPDATE CASCADE);INSERT INTO departments(department_id,department_name,location_id)
VALUES (1,'Administration',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (2,'Marketing',1800);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (3,'Purchasing',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (4,'Human Resources',2400);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (5,'Shipping',1500);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (6,'IT',1400);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (7,'Public Relations',2700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (8,'Sales',2500);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (9,'Executive',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (10,'Finance',1700);
INSERT INTO departments(department_id,department_name,location_id)
VALUES (11,'Accounting',1700);use SQL_Projectselect 
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20) DEFAULT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) DEFAULT NULL,
    hire_date DATE NOT NULL,
    job_id INT NOT NULL,
    salary DECIMAL(8,2) NOT NULL,
    manager_id INT DEFAULT NULL,
    department_id INT DEFAULT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs (job_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (department_id) REFERENCES departments (department_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES Employees (employee_id)
);

INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) 
VALUES 
(100, 'Steven', 'King', 'steven.king@sqltutorial.org', '515.123.4567', '1987-06-17', 4, 24000.00, NULL, 9),
(101, 'Neena', 'Kochhar', 'neena.kochhar@sqltutorial.org', '515.123.4568', '1989-09-21', 5, 17000.00, 100, 9),
(102, 'Lex', 'De Haan', 'lex.dehaan@sqltutorial.org', '515.123.4569', '1993-01-13', 5, 17000.00, 100, 9),
(103, 'Alexander', 'Hunold', 'alexander.hunold@sqltutorial.org', '590.423.4567', '1990-01-03', 9, 9000.00, 102, 6),
(104, 'Bruce', 'Ernst', 'bruce.ernst@sqltutorial.org', '590.423.4568', '1991-05-21', 9, 6000.00, 103, 6),
(105, 'David', 'Austin', 'david.austin@sqltutorial.org', '590.423.4569', '1997-06-25', 9, 4800.00, 103, 6),
(106, 'Valli', 'Pataballa', 'valli.pataballa@sqltutorial.org', '590.423.4560', '1998-02-05', 9, 4800.00, 103, 6),
(107, 'Diana', 'Lorentz', 'diana.lorentz@sqltutorial.org', '590.423.5567', '1999-02-07', 9, 4200.00, 103, 6),
(108, 'Nancy', 'Greenberg', 'nancy.greenberg@sqltutorial.org', '515.124.4569', '1994-08-17', 7, 12000.00, 101, 10),
(109, 'Daniel', 'Faviet', 'daniel.faviet@sqltutorial.org', '515.124.4169', '1994-08-16', 6, 9000.00, 108, 10),
(110, 'John', 'Chen', 'john.chen@sqltutorial.org', '515.124.4269', '1997-09-28', 6, 8200.00, 108, 10),
(111, 'Ismael', 'Sciarra', 'ismael.sciarra@sqltutorial.org', '515.124.4369', '1997-09-30', 6, 7700.00, 108, 10),
(112, 'Jose Manuel', 'Urman', 'josemanuel.urman@sqltutorial.org', '515.124.4469', '1998-03-07', 6, 7800.00, 108, 10),
(113, 'Luis', 'Popp', 'luis.popp@sqltutorial.org', '515.124.4567', '1999-12-07', 6, 6900.00, 108, 10),
(114, 'Den', 'Raphaely', 'den.raphaely@sqltutorial.org', '515.127.4561', '1994-12-07', 14, 11000.00, 100, 3),
(115, 'Alexander', 'Khoo', 'alexander.khoo@sqltutorial.org', '515.127.4562', '1995-05-18', 13, 3100.00, 114, 3),
(116, 'Shelli', 'Baida', 'shelli.baida@sqltutorial.org', '515.127.4563', '1997-12-24', 13, 2900.00, 114, 3),
(117, 'Sigal', 'Tobias', 'sigal.tobias@sqltutorial.org', '515.127.4564', '1997-07-24', 13, 2800.00, 114, 3),
(118, 'Guy', 'Himuro', 'guy.himuro@sqltutorial.org', '515.127.4565', '1998-11-15', 13, 2600.00, 114, 3),
(119, 'Karen', 'Colmenares', 'karen.colmenares@sqltutorial.org', '515.127.4566', '1999-08-10', 13, 2500.00, 114, 3),
(120, 'Matthew', 'Weiss', 'matthew.weiss@sqltutorial.org', '650.123.1234', '1996-07-18', 19, 8000.00, 100, 5),
(121, 'Adam', 'Fripp', 'adam.fripp@sqltutorial.org', '650.123.2234', '1997-04-10', 19, 8200.00, 100, 5),
(122, 'Payam', 'Kaufling', 'payam.kaufling@sqltutorial.org', '650.123.3234', '1995-05-01', 19, 7900.00, 100, 5),
(123, 'Shanta', 'Vollman', 'shanta.vollman@sqltutorial.org', '650.123.4234', '1997-10-10', 19, 6500.00, 100, 5),
(126, 'Irene', 'Mikkilineni', 'irene.mikkilineni@sqltutorial.org', '650.124.1224', '1998-09-28', 18, 2700.00, 120, 5),
(145, 'John', 'Russell', 'john.russell@sqltutorial.org', NULL, '1996-10-01', 15, 14000.00, 100, 8),
(146, 'Karen', 'Partners', 'karen.partners@sqltutorial.org', NULL, '1997-01-05', 15, 13500.00, 100, 8),
(176, 'Jonathon', 'Taylor', 'jonathon.taylor@sqltutorial.org', NULL, '1998-03-24', 16, 8600.00, 100, 8),
(177, 'Jack', 'Livingston', 'jack.livingston@sqltutorial.org', NULL, '1998-04-23', 16, 8400.00, 100, 8),
(178, 'Kimberely', 'Grant', 'kimberely.grant@sqltutorial.org', NULL, '1999-05-24', 16, 7000.00, 100, 8),
(179, 'Charles', 'Johnson', 'charles.johnson@sqltutorial.org', NULL, '2000-01-04', 16, 6200.00, 100, 8),
(192, 'Sarah', 'Bell', 'sarah.bell@sqltutorial.org', '650.501.1876', '1996-02-04', 17, 4000.00, 123, 5),
(193, 'Britney', 'Everett', 'britney.everett@sqltutorial.org', '650.501.2876', '1997-03-03', 17, 3900.00, 123, 5),
(200, 'Jennifer', 'Whalen', 'jennifer.whalen@sqltutorial.org', '515.123.4444', '1987-09-17', 3, 4400.00, 101, 1),
(201, 'Michael', 'Hartstein', 'michael.hartstein@sqltutorial.org', '515.123.5555', '1996-02-17', 10, 13000.00, 100, 2),
(202, 'Pat', 'Fay', 'pat.fay@sqltutorial.org', '603.123.6666', '1997-08-17', 11, 6000.00, 201, 2),
(203, 'Susan', 'Mavris', 'susan.mavris@sqltutorial.org', '515.123.7777', '1994-06-07', 8, 6500.00, 101, 4),
(204, 'Hermann', 'Baer', 'hermann.baer@sqltutorial.org', '515.123.8888', '1994-06-07', 12, 10000.00, 101, 7),
(205, 'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07',2,12000.00,101,11);

CREATE TABLE dependents (
dependent_id INT PRIMARY KEY,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
relationship VARCHAR (25) NOT NULL,
employee_id INT NOT NULL,
FOREIGN KEY (employee_id) REFERENCES Employees (employee_id) ON DELETE
CASCADE ON UPDATE CASCADE
);

INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (1,'Penelope','Gietz','Child',206);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (2,'Nick','Higgins','Child',205);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (3,'Ed','Whalen','Child',200);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (4,'Jennifer','King','Child',100);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (5,'Johnny','Kochhar','Child',101);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (6,'Bette','De Haan','Child',102);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (7,'Grace','Faviet','Child',109);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (8,'Matthew','Chen','Child',110);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (9,'Joe','Sciarra','Child',111);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (10,'Christian','Urman','Child',112);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (11,'Zero','Popp','Child',113);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (12,'Karl','Greenberg','Child',108);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (13,'Uma','Mavris','Child',203);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (14,'Vivien','Hunold','Child',103);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (15,'Cuba','Ernst','Child',104);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (16,'Fred','Austin','Child',105);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (17,'Helen','Pataballa','Child',106);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (18,'Dan','Lorentz','Child',107);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (19,'Bob','Hartstein','Child',201);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (20,'Lucille','Fay','Child',202);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (21,'Kirsten','Baer','Child',204);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (22,'Elvis','Khoo','Child',115);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (23,'Sandra','Baida','Child',116);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (24,'Cameron','Tobias','Child',117);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (25,'Kevin','Himuro','Child',118);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (26,'Rip','Colmenares','Child',119);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (27,'Julia','Raphaely','Child',114);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (28,'Woody','Russell','Child',145);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (29,'Alec','Partners','Child',146);
INSERT INTO dependents(dependent_id,first_name,last_name,relationship,employee_id)
VALUES (30,'Sandra','Taylor','Child',176);

select * from dependents
select * from Employees
use SQL_Project
--Task 1--
--1)select
select * from Employees
select employee_id,first_name,last_name,hire_date from Employees

select employee_id,salary,salary* 2 as New_salary
from Employees

select employee_id,salary,salary/2 as New_salary
from Employees

--2)order by
select employee_id,first_name,last_name,hire_date,salary from Employees
--order by first_name asc, last_name desc
order by hire_date desc

--3)distinct
select distinct salary,employee_id from Employees
order by salary desc

select distinct job_id,salary from Employees
order by salary desc

select job_id,sum(salary)
from Employees
group by job_id

select distinct phone_number from Employees

--4) top n
select * from Employees
order by first_name 

select * from Employees
order by first_name
offset 4 rows 

select top 5 salary,first_name from Employees
order by salary

select * from Employees
where salary = (select max(salary) from employees
where salary<(select max(salary) from Employees)
)
select max(salary) from Employees

SELECT * 
FROM employees
ORDER BY salary DESC
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY;
 
--by using window fnc
select *from
( select *,ROW_NUMBER() over( order by salary desc ) as rn
from Employees
)
as Second_high
where rn=1;

--by using cte expression
with Seond_high as(
select *,dense_rank() over(order by salary desc) as ranks
from Employees
)
select * from 
Seond_high
where ranks= 2

--5)where 
select * from employees
where salary>14000 
order by salary desc
select * from Employees
where phone_number is null

--6)Constrains and alter
create table courses(
course_id int primary key,
course_name varchar(20)
)
alter table courses
add credit_hours int;

alter table courses
add fee decimal (10,2),
max_limit int;

alter table courses
alter column fee decimal(10,2) not null
alter table courses
drop column credit_hours

drop table courses

--//Task 2//--
use SQL_Project
select * from Employees
where salary >14000 and salary< 25000

select * from Employees
where phone_number is null

select * from Employees
where salary between 8000 and 16000

select * from Employees
where first_name like 'jo%'

select * from Employees
where first_name like '_h%'

use SQL_Project
select * from departments
select * from Employees

select e.* from Employees e
join departments d on 
e.department_id=d.department_id
where e.salary>(
                select max(e.salary)
				from Employees e
				where e.department_id=8
				)

select e.* from Employees e
join departments d on
e.department_id=d.department_id


select employee_id,first_name ,salary from Employees e
where salary >(select avg(salary)
               from Employees
			   where department_id=e.department_id
			   group by department_id)
			   order by e.first_name asc
select * from dependents
select * from Employees


select e.first_name,e.last_name,d.dependent_id,e.employee_id
from  Employees e 
join dependents d
on e.employee_id=d.employee_id

select * from Employees
where year(hire_date) between 1900 and 2900

select * from Employees
where hire_date not between '2000-01-01' and '2900-01-10'

select * from Employees
where first_name like 'Da%'

select * from Employees
where first_name like '%er'

select * from Employees
where last_name like '%an%'

	select e1.salary from Employees e1
	where exists(select 1 from Employees e2
	where e1.employee_id=e2.employee_id
	And e2.salary>5000
	)

select * from Employees
where last_name like 'jo_%'
and len(last_name) <=4

select * from Employees
where last_name like 'jo_'

select * from Employees
where last_name like '%_' or last_name like '%'

select * from Employees
where last_name like 's%' and last_name not like 'sh%'

select * from Employees
where department_id in (5) and salary <5000

select * from Employees
where department_id not in (1,2,3)

select * from Employees
where last_name not like 'd%'

select e.employee_id,e.first_name
from Employees e
left join dependents d
on e.employee_id=d.employee_id
where d.employee_id is null

--inner join--
select * from departments
where department_id in(1,2,3)

	select e.employee_id,e.first_name,e.job_id,e.salary,d.* 
	from Employees e
	inner join departments d
	on e.department_id=d.department_id
	where d.department_id in(1,2,3)
	order by d.department_id asc


--left join--
use SQL_Project
select * from countries
select * from locations

select c.country_id,c.country_name,l.location_id
from countries c
left join locations l
on c.country_id=l.country_id
where l.country_id is  null

--Write a query to join 3 tables--
select * from regions r
inner join countries c
on r.region_id=c.region_id
inner join locations l
on c.country_id=l.country_id

--self join--
select * from Employees

select 
e.employee_id,
e.first_name,
m.manager_id,
m.first_name
from Employees e
left join Employees m
on e.employee_id=m.employee_id
order by e.employee_id

--full outer join--
CREATE TABLE fruits (
fruit_id INT PRIMARY KEY,
fruit_name VARCHAR (255) NOT NULL,
basket_id INTEGER
);
CREATE TABLE baskets (
basket_id INT PRIMARY KEY,
basket_name VARCHAR (255) NOT NULL
);

INSERT INTO baskets (basket_id, basket_name)
VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

INSERT INTO fruits (
fruit_id,
fruit_name,
basket_id
)
VALUES
(1, 'Apple', 1),
(2, 'Orange', 1),
(3, 'Banana', 2),
(4, 'Strawberry', NULL);select * from basketsselect * from fruits--Write a query to returns each fruit that is in a basket and each basket that has a fruit, but also returns each fruit that is not in any basket and each basket that does not have any fruit.--select * from fruits 
full outer join baskets
on fruits.basket_id=baskets.basket_id--Write a query to find the empty basket, which does not store any fruit--select * from fruits 
full outer join baskets
on fruits.basket_id=baskets.basket_id
where fruits.fruit_id is null

--Write a query which fruit is not in any basket--
select * from fruits 
full outer join baskets
on fruits.basket_id=baskets.basket_id
where baskets.basket_id is null

--Cross join--
CREATE TABLE sales_organization (
sales_org_id INT PRIMARY KEY,
sales_org VARCHAR (255)
);
CREATE TABLE sales_channel (
channel_id INT PRIMARY KEY,
channel VARCHAR (255)
);


INSERT INTO sales_channel (channel_id, channel)
VALUES
(1, 'Wholesale'),
(2, 'Retail'),
(3, 'eCommerce'),
(4, 'TV Shopping');

--Write a Query To find the all possible sales channels that a sales organization--
select * from sales_organization
cross join sales_channel

select * from Employees
select * from departments

select max(salary) as Max_Sal,min(salary) as Min_Sal,avg(Salary) as Avg_Sal ,department_id  from Employees
group by department_id

select sum(salary) as Total_Salary,department_id  from Employees
group by department_id


select job_id,department_id  from Employees
group by department_id,job_id
order by job_id	


--Having Clause--
select * from Employees
select * from dependents

--calculates the sum of salary that the company pays for each department and selects only the departments with the sum of salary between 20000 and 30000.

select department_id,sum(salary) as Total_Salary
from employees 
group by department_id
having sum(salary) between 20000 and 30000

--To find the department that has employees with the lowest salary greater than 10000

select department_id,min(salary) as Min_Salary
from employees 
group by department_id
having min(salary)>10000

--To find the departments that have the average salaries of employees between 5000 and 7000

select department_id,avg(salary) as Avg_Salary
from employees 
group by department_id
having avg(salary) between 5000 and 7000

--Task 5  --

--UNION--
select first_name,last_name from Employees
Union 
select first_name,last_name from dependents

--UNION ALL--
select first_name,last_name from Employees
Union all
select first_name,last_name from dependents

--INTERSECT--
select employee_id from Employees
intersect
select employee_id from dependents


--EXISTS--

--A. finds all employees who have at least one dependent.
select distinct e.employee_id,e.first_name,e.department_id
from Employees e
where exists (
              select 1 from dependents d
			  where e.employee_id=d.employee_id
			  )

--B . finds employees who do not have any dependents:

select e.employee_id,first_name
from Employees e
where not exists(
             select 1 from dependents d
			 where e.employee_id =d.dependent_id
				)

	use SQL_Project

--CASE STATEMENT--

--B. Write a Query If the salary is less than 3000, the CASE expression returns “Low”. If the salary is between 3000 and 5000, it returns “average”. When the salary is greater than 5000, the CASE expression returns “High”

select salary,
             CASE
			 when salary <3000 Then 'LOW'
			 When salary between 3000 and 5000 then 'Average'
			 Else 'HIgh'
			End as Salary_Category
from Employees

--Suppose the current year is 2000. How to use the simple CASE expression to get the work anniversaries of employees by

select employee_id,first_name,hire_date,
            CASE 
			when hire_date='2000'then '5th Anniversary'
			when hire_date='2010' then '10th Anniversary'
			when hire_date='2020' then '15th Anniversary'
			else 'No Major Anniversary'
			End as Anniversary_Year
from Employees

use SQL_Project

update Employees
set last_name ='Lopez'
where employee_id=192

--Final Task Sql Subquery--
--//A. Combine Above two queries using subquery inorder find all departments located at the
--location whose id is 1700 and find all employees that belong to the location 1700 by
--using the department id list of the previous query//

select * from Employees
select * from departments
--by using joins
select e.employee_id,e.first_name,d.department_id
from Employees e
join departments d
on e.department_id=d.department_id
where d.location_id in(1700)

--by using subquery
select * from Employees
where department_id in(select department_id
                       from departments
					   where location_id=1700
					   )

--B. to find all employees who do not locate at the location 1700:
select * from Employees
where department_id in (
select department_id from departments
where location_id not in (1700)
)


--the result of this query should not be there in the above query results.--
select e.employee_id ,d.location_id
from Employees e
join departments d
on e.department_id=d.department_id
where d.location_id =1700


--C. finds the employees who have the highest salary:
select * from employees e
where salary = (
select max(salary)
from employees 
where department_id=e.department_id
)
order by e.department_id

--D. finds all employees who salaries are greater than the average salary of all employees:
select employee_id,salary from employees 
where salary > (select  avg(salary) from Employees
               )

--E. finds all departments which have at least one employee with the salary is greater than 10,000:

select department_id,first_name,salary from employees
where salary in (select salary from Employees
               where salary >10000)

--F. finds all departments that do not have any employee with the salary greater than 10,000:
select department_id,first_name,salary from employees
where salary not in (select salary from Employees
               where salary >=10000)

--G. to find the lowest salary by department:
select *  from Employees e
where salary = (select min (salary) from employees

where department_id=e.department_id
group by department_id)

select min(salary),department_id from employees
group by department_id

--H. finds all employees whose salaries are greater than the lowest salary of every department:
select *
from Employees e
where salary > (
select min(salary) from employees
where department_id=e.department_id

)

--J. returns the average salary of every department
select avg(salary) as Average_salary,department_id from Employees
group by department_id

select * from Employees e
where salary =(
select avg(salary) from Employees
where department_id=e.department_id
)

--K. to calculate the average of average salary of departments :select avg(salary) from employeeswhere salary = (select avg(salary) from Employees)select avg(Avergae) as Average_salaryfrom (select avg(salary) as Avergae from Employeesgroup by department_id) avg_dept--L. finds the salaries of all employees, their average salary, and the difference between the salary of each employee and the average salaryselect e.employee_id,e.first_name,e.salary,(select avg(salary) from employees) as Average_sal,(e.salary - (select avg(salary) from Employees)) as  Salary_Difffrom Employees e---------------------------------------The End Of Project------------------------------------------------