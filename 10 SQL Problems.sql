
1. From the following table, write a SQL query to convert negative numbers to positive and vice verse. Return the number.
DROP TABLE IF EXISTS tablefortest; 
CREATE TABLE tablefortest(srno int,  pos_neg_val int);
INSERT INTO tablefortest VALUES (1, 56);
INSERT INTO tablefortest VALUES (2, -74);
INSERT INTO tablefortest VALUES (3, 15);
INSERT INTO tablefortest VALUES (4, -51);
INSERT INTO tablefortest VALUES (5, -9);
INSERT INTO tablefortest VALUES (6, 32);
select * from tablefortest;

select srno,pos_neg_val,case when pos_neg_val > -1 then -(pos_neg_val) 
else  -(pos_neg_val) end as converted_value
from tablefortest

2.  From the following table, write a SQL query to find the century of a given date. Return the century

DROP TABLE IF EXISTS tablefortest;
CREATE TABLE tablefortest(ID int,  date_of_birth date);
INSERT INTO tablefortest VALUES (1, '1907-08-15');
INSERT INTO tablefortest VALUES (2, '1883-06-27');
INSERT INTO tablefortest VALUES (3, '1900-01-01');
INSERT INTO tablefortest VALUES (4, '1901-01-01');
INSERT INTO tablefortest VALUES (5, '2005-09-01');
INSERT INTO tablefortest VALUES (6, '1775-11-23');
INSERT INTO tablefortest VALUES (7, '1800-01-01');
SELECT * FROM tablefortest;

select id, cast(substring(cast(EXTRACT(YEAR FROM(date_of_birth)) as varchar),1,2) as int)+1 AS Century
from tablefortest

3. From the following table, write a SQL query to find the even or odd values. Return "Even" for even number and "Odd" for odd number

DROP TABLE IF EXISTS tablefortest;
CREATE TABLE tablefortest(srno int,  col_val int);
INSERT INTO tablefortest VALUES (1, 56);
INSERT INTO tablefortest VALUES (2, 74);
INSERT INTO tablefortest VALUES (3, 15);
INSERT INTO tablefortest VALUES (4, 51);
INSERT INTO tablefortest VALUES (5, 9);
INSERT INTO tablefortest VALUES (6, 32);
SELECT * FROM tablefortest;
 
select srno,col_val,case when col_val%2=0 then 'even' else 'Odd' end as even_or_odd
from tablefortest


4. From the following table, write a SQL query to find those students who have referred by the teacher whose id not equal to 602. Return the student names. 

CREATE TABLE IF NOT EXISTS students (student_id INT,student_name VARCHAR(25),teacher_id INT);
TRUNCATE TABLE students;

CREATE TABLE IF NOT EXISTS students (student_id INT,student_name VARCHAR(25),teacher_id INT);
INSERT INTO students (student_id, student_name, teacher_id) values ('1001', 'Alex', '601');
INSERT INTO students (student_id, student_name, teacher_id) values ('1002', 'Jhon', NULL);
INSERT INTO students (student_id, student_name, teacher_id) values ('1003', 'Peter', NULL);
INSERT INTO students (student_id, student_name, teacher_id) values ('1004', 'Minto', '604');
INSERT INTO students (student_id, student_name, teacher_id) values ('1005', 'Crage', NULL);
INSERT INTO students (student_id, student_name, teacher_id) values ('1006', 'Chang', '601');
INSERT INTO students (student_id, student_name, teacher_id) values ('1007', 'Philip', '602');

select student_name  
from students
where teacher_id!='602' OR teacher_id IS NULL;

5.From the following table write a query in SQL to find the highest daily total order for an item between 2019-07-01 to 2019-12-31.
Return item description, order date and the total order quantity.

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
ORDER_ID INT NOT NULL,
CUSTOMER_ID INT NOT NULL,
ITEM_DESC varchar(30) NOT NULL,
ORDER_DATE date NOT NULL,
order_qty int not null,
PRIMARY KEY (ORDER_ID)
);

insert into orders values(101	,2109	,'juice		','2019-07-21',	50);
insert into orders values(102	,2139	,'chocolate	','2019-05-17',	40);
insert into orders values(103	,2120	,'juice		','2019-05-17',	40);
insert into orders values(104	,2108	,'cookies		','2019-05-17',	50);
insert into orders values(105	,2130	,'juice		','2019-10-18',	45);
insert into orders values(106	,2103	,'cake		','2019-07-21',	35);
insert into orders values(107	,2122	,'cookies		','2019-12-17',	40);
insert into orders values(108	,2125	,'cake		','2019-12-17',	38);
insert into orders values(109	,2139	,'cake		','2019-07-21',	40);
insert into orders values(110	,2141	,'cookies		','2019-05-17',	60);
insert into orders values(111	,2116	,'cake		','2019-10-18',	45);
insert into orders values(112	,2128	,'cake		','2019-10-18',	38);
insert into orders values(113	,2146	,'chocolate	','2019-10-18',	55);
insert into orders values(114	,2119	,'cookies		','2019-10-18',	30);
insert into orders values(115	,2142	,'cake		','2019-03-05',	26);
insert into orders values(116	,2122	,'cake		','2019-03-05',	59);
insert into orders values(117	,2128	,'chocolate	','2019-06-19',	45);
insert into orders values(118	,2112	,'cookies		','2019-06-19',	28);
insert into orders values(119	,2149	,'cookies		','2019-10-18',	49);
insert into orders values(120	,2100	,'cookies		','2020-03-14',	76);
insert into orders values(121	,2130	,'juice		','2020-03-14',	20);
insert into orders values(122	,2103	,'juice		','2019-07-21',	27);
insert into orders values(123	,2112	,'cookies		','2019-06-19',	52);
insert into orders values(124	,2102	,'cake		','2019-07-21',	14);
insert into orders values(125	,2120	,'chocolate	','2019-07-21',	85);
insert into orders values(126	,2109	,'cake		','2019-06-19',	18);
insert into orders values(127	,2101	,'juice		','2019-10-18',	64);
insert into orders values(128	,2138	,'juice		','2019-06-19',	55);
insert into orders values(129	,2100	,'juice		','2019-07-21',	45);
insert into orders values(130	,2129	,'juice		','2019-10-18',	35);
insert into orders values(131	,2123	,'juice		','2019-10-18',	25);
insert into orders values(132	,2104	,'chocolate	','2019-10-18',	63);
insert into orders values(133	,2110	,'cake		','2019-12-17',	38);
insert into orders values(134	,2143	,'cake		','2019-06-19',	27);
insert into orders values(135	,2130	,'juice		','2019-05-17',	30);
insert into orders values(136	,2128	,'juice		','2019-10-18',	40);
insert into orders values(137	,2133	,'cookies		','2019-06-19',	51);
insert into orders values(138	,2150	,'cookies		','2019-06-19',	43);
insert into orders values(139	,2120	,'juice		','2019-10-18',	55);
insert into orders values(140	,2109	,'cake		','2019-10-18',	44);
insert into orders values(141	,2110	,'cake		','2019-12-17',	50);
insert into orders values(142	,2140	,'juice		','2019-03-05',	65);
insert into orders values(143	,2112	,'cookies		','2019-10-18',	46);
insert into orders values(144	,2117	,'chocolate	','2019-06-19',	25);
insert into orders values(145	,2137	,'cookies		','2019-07-21',	49);
insert into orders values(146	,2130	,'cake		','2019-12-17',	40);
insert into orders values(147	,2133	,'cake		','2019-07-21',	30);
insert into orders values(148	,2143	,'juice		','2019-03-05',	60);
insert into orders values(149	,2111	,'chocolate	','2019-07-21',	74);
insert into orders values(150	,2150	,'cookies		','2019-10-18',	75);
insert into orders values(151	,2131	,'cake		','2019-07-21',	45);
insert into orders values(152	,2140	,'chocolate	','2019-05-17',	40);
insert into orders values(153	,2147	,'cookies		','2019-07-21',	65);
insert into orders values(154	,2119	,'chocolate	','2019-05-17',	60);
insert into orders values(155	,2116	,'juice		','2019-12-17',	40);
insert into orders values(156	,2141	,'juice		','2019-12-17',	50);
insert into orders values(157	,2143	,'cake		','2019-05-17',	55);
insert into orders values(158	,2105	,'cake		','2019-07-21',	70);
insert into orders values(159	,2149	,'chocolate	','2019-03-05',	50);
insert into orders values(160	,2117	,'cookies		','2019-07-21',	61);
insert into orders values(161	,2150	,'cookies		','2019-07-21',	50);
insert into orders values(162	,2134	,'cake		','2019-03-05',	55);
insert into orders values(163	,2133	,'cookies		','2019-06-19',	54);
insert into orders values(164	,2127	,'juice		','2019-06-19',	55);
insert into orders values(165	,2101	,'juice		','2019-06-19',	45);
insert into orders values(166	,2137	,'chocolate	','2019-12-17',	40);
insert into orders values(167	,2113	,'chocolate	','2019-06-19',	30);
insert into orders values(168	,2141	,'cake		','2019-06-19',	60);
insert into orders values(169	,2112	,'chocolate	','2019-12-17',	25);
insert into orders values(170	,2118	,'juice		','2019-10-18',	70);
insert into orders values(171	,2111	,'juice		','2019-06-19',	60);
insert into orders values(172	,2146	,'chocolate	','2019-12-17',	20);
insert into orders values(173	,2148	,'cookies		','2020-03-14',	55);
insert into orders values(174	,2100	,'cookies		','2019-12-17',	40);
insert into orders values(175	,2105	,'cookies		','2019-03-05',	30);
insert into orders values(176	,2129	,'juice		','2019-10-18',	40);
insert into orders values(177	,2121	,'juice		','2019-05-17',	30);
insert into orders values(178	,2117	,'cake		','2019-07-21',	40);
insert into orders values(179	,2133	,'juice		','2019-07-21',	20);
insert into orders values(180	,2124	,'cake		','2019-07-21',	30);
insert into orders values(181	,2145	,'cake		','2019-12-17',	25);
insert into orders values(182	,2105	,'cookies		','2019-03-05',	20);
insert into orders values(183	,2131	,'juice		','2019-03-05',	50);
insert into orders values(184	,2114	,'chocolate	','2019-10-18',	56);
insert into orders values(185	,2120	,'juice		','2019-12-17',	55);
insert into orders values(186	,2130	,'juice		','2019-12-17',	46);
insert into orders values(187	,2141	,'chocolate	','2019-03-05',	54);
insert into orders values(188	,2147	,'cake		','2020-03-14',	40);
insert into orders values(189	,2118	,'juice		','2019-05-17',	54);
insert into orders values(190	,2136	,'chocolate	','2019-07-21',	58);
insert into orders values(191	,2132	,'cake		','2019-12-17',	50);
insert into orders values(192	,2137	,'chocolate	','2019-07-21',	53);
insert into orders values(193	,2107	,'cake		','2019-10-18',	35);
insert into orders values(194	,2111	,'chocolate	','2019-05-17',	50);
insert into orders values(195	,2100	,'cake		','2019-03-05',	55);
insert into orders values(196	,2106	,'juice		','2019-07-21',	47);
insert into orders values(197	,2114	,'cookies		','2019-06-19',	55);
insert into orders values(198	,2110	,'cake		','2019-06-19',	75);
insert into orders values(199	,2130	,'juice		','2019-05-17',	55);
insert into orders values(200	,2117	,'cake		','2019-12-17',	48);
 
select * from orders

SELECT item_desc,order_date,SUM(order_qty) dayorder 
FROM orders
WHERE order_date BETWEEN '2019-07-01' AND '2019-12-31'
GROUP BY item_desc,order_date
ORDER BY dayorder DESC
LIMIT 1;


6. From the following table write a SQL query to calculate the total order amount issued by each customer in September 2008.
Return customer ID and total order amount
drop table if exists customer
create table customer(
cust_code		varchar(10) not null unique,	
cust_name		varchar(25),
cust_city		varchar(25),
working_area	varchar(25),
cust_country	varchar(25),
grade			int,
opening_amt		decimal(10,2),
receive_amt		decimal(10,2),
payment_amt		decimal(10,2),
outstanding_amt  decimal(10,2),
phone_no 		varchar(15)
);



insert into customer values('C00013','Holmes     ','London    ','London   ','UK       ', 2, 6000.00, 5000.00,7000.00, 4000.00,'BBBBBBB     ');
insert into customer values('C00001','Micheal    ','New York  ','New York ','USA      ', 2, 3000.00, 5000.00,2000.00, 6000.00,'CCCCCCC     ');
insert into customer values('C00020','Albert     ','New York  ','New York ','USA      ', 3, 5000.00, 7000.00,6000.00, 6000.00,'BBBBSBB     ');
insert into customer values('C00025','Ravindran  ','Bangalore ','Bangalore','India    ', 2, 5000.00, 7000.00,4000.00, 8000.00,'AVAVAVA     ');
insert into customer values('C00024','Cook       ','London    ','London   ','UK       ', 2, 4000.00, 9000.00,7000.00, 6000.00,'FSDDSDF     ');
insert into customer values('C00015','Stuart     ','London    ','London   ','UK       ', 1, 6000.00, 8000.00,3000.00,11000.00,'GFSGERS     ');
insert into customer values('C00002','Bolt       ','New York  ','New York ','USA      ', 3, 5000.00, 7000.00,9000.00, 3000.00,'DDNRDRH     ');
insert into customer values('C00018','Fleming    ','Brisban   ','Brisban  ','Australia', 2, 7000.00, 7000.00,9000.00, 5000.00,'NHBGVFC     ');
insert into customer values('C00021','Jacks      ','Brisban   ','Brisban  ','Australia', 1, 7000.00, 7000.00,7000.00, 7000.00,'WERTGDF     ');
insert into customer values('C00019','Yearannaidu','Chennai   ','Chennai  ','India    ', 1, 8000.00, 7000.00,7000.00, 8000.00,'ZZZZBFV     ');
insert into customer values('C00005','Sasikant   ','Mumbai    ','Mumbai   ','India    ', 1, 7000.00,11000.00,7000.00,11000.00,'147-25896312');
insert into customer values('C00007','Ramanathan ','Chennai   ','Chennai  ','India    ', 1, 7000.00,11000.00,9000.00, 9000.00,'GHRDWSD     ');
insert into customer values('C00022','Avinash    ','Mumbai    ','Mumbai   ','India    ', 2, 7000.00,11000.00,9000.00, 9000.00,'113-12345678');
insert into customer values('C00004','Winston    ','Brisban   ','Brisban  ','Australia', 1, 5000.00, 8000.00,7000.00, 6000.00,'AAAAAAA     ');
insert into customer values('C00023','Karl       ','London    ','London   ','UK       ', 0, 4000.00, 6000.00,7000.00, 3000.00,'AAAABAA     ');
insert into customer values('C00006','Shilton    ','Torento   ','Torento  ','Canada   ', 1,10000.00, 7000.00,6000.00,11000.00,'DDDDDDD     ');
insert into customer values('C00010','Charles    ','Hampshair ','Hampshair','UK       ', 3, 6000.00, 4000.00,5000.00, 5000.00,'MMMMMMM     ');
insert into customer values('C00017','Srinivas   ','Bangalore ','Bangalore','India    ', 2, 8000.00, 4000.00,3000.00, 9000.00,'AAAAAAB     ');
insert into customer values('C00012','Steven     ','San Jose  ','San Jose ','USA      ', 1, 5000.00, 7000.00,9000.00, 3000.00,'KRFYGJK     ');
insert into customer values('C00008','Karolina   ','Torento   ','Torento  ','Canada   ', 1, 7000.00, 7000.00,9000.00, 5000.00,'HJKORED     ');
insert into customer values('C00003','Martin     ','Torento   ','Torento  ','Canada   ', 2, 8000.00, 7000.00,7000.00, 8000.00,'MJYURFD     ');
insert into customer values('C00009','Ramesh     ','Mumbai    ','Mumbai   ','India    ', 3, 8000.00, 7000.00,3000.00,12000.00,'Phone No    ');
insert into customer values('C00014','Rangarappa ','Bangalore ','Bangalore','India    ', 2, 8000.00,11000.00,7000.00,12000.00,'AAAATGF     ');
insert into customer values('C00016','Venkatpati ','Bangalore ','Bangalore','India    ', 2, 8000.00,11000.00,7000.00,12000.00,'JRTVFDD     ');
insert into customer values('C00011','Sundariya  ','Chennai   ','Chennai  ','India    ', 3, 7000.00,11000.00,7000.00,11000.00,'PPHGRTS     ');

	
drop table if exists orders;
create table orders(
ord_num		int not null unique,	
ord_amount		int,
advance_amount		int,
ord_date	date,
cust_code	varchar(10),
ord_description		varchar(25),
foreign key(cust_code) references customer(cust_code)
);



 insert into orders values(200114, 3500,2000,'2008-08-15','C00002',' ');
 insert into orders values(200122, 2500, 400,'2008-09-16','C00003',' ');
 insert into orders values(200118,  500, 100,'2008-07-20','C00023',' ');
 insert into orders values(200119, 4000, 700,'2008-09-16','C00007',' ');
 insert into orders values(200121, 1500, 600,'2008-09-23','C00008',' ');
 insert into orders values(200130, 2500, 400,'2008-07-30','C00025',' ');
 insert into orders values(200134, 4200,1800,'2008-09-25','C00004',' ');
 insert into orders values(200108, 4000, 600,'2008-02-15','C00008',' ');
 insert into orders values(200103, 1500, 700,'2008-05-15','C00021',' ');
 insert into orders values(200105, 2500, 500,'2008-07-18','C00025',' ');
 insert into orders values(200109, 3500, 800,'2008-07-30','C00011',' ');
 insert into orders values(200101, 3000,1000,'2008-07-15','C00001',' ');
 insert into orders values(200111, 1000, 300,'2008-07-10','C00020',' ');
 insert into orders values(200104, 1500, 500,'2008-03-13','C00006',' ');
 insert into orders values(200106, 2500, 700,'2008-04-20','C00005',' ');
 insert into orders values(200125, 2000, 600,'2008-10-10','C00018',' ');
 insert into orders values(200117,  800, 200,'2008-10-20','C00014',' ');
 insert into orders values(200123,  500, 100,'2008-09-16','C00022',' ');
 insert into orders values(200120,  500, 100,'2008-07-20','C00009',' ');
 insert into orders values(200116,  500, 100,'2008-07-13','C00010',' ');
 insert into orders values(200124,  500, 100,'2008-06-20','C00017',' ');
 insert into orders values(200126,  500, 100,'2008-06-24','C00022',' ');
 insert into orders values(200129, 2500, 500,'2008-07-20','C00024',' ');
 insert into orders values(200127, 2500, 400,'2008-07-20','C00015',' ');
 insert into orders values(200128, 3500,1500,'2008-07-20','C00009',' ');
 insert into orders values(200135, 2000, 800,'2008-09-16','C00007',' ');
 insert into orders values(200131,  900, 150,'2008-08-26','C00012',' ');
 insert into orders values(200133, 1200, 400,'2008-06-29','C00009',' ');
 insert into orders values(200100, 1000, 600,'2008-01-08','C00015',' ');
 insert into orders values(200110, 3000, 500,'2008-04-15','C00019',' ');
 insert into orders values(200107, 4500, 900,'2008-08-30','C00007',' ');
 insert into orders values(200112, 2000, 400,'2008-05-30','C00016',' ');
 insert into orders values(200113, 4000, 600,'2008-06-10','C00022',' ');
 insert into orders values(200102, 2000, 300,'2008-05-25','C00012',' ');

select * from customer
select * from orders

select distinct(cust_code),sum(ord_amount) over(partition by cust_code) as total_amount
from orders
where ord_date between '2008-09-01' AND '2008-09-30'
order by total_amount desc


7. From the following table write a SQL query to show the salary of each employee along with the average salary for their department.
Return job ID,name,salary and average salary
drop table if exists employees
create table employees (
employee_id int not null unique,
emp_name varchar(25),
hire_date date,
job_id varchar(25),
salary decimal(10,2),
manager_id int,
department_id int
);



insert into employees values( 100,'Steven     ','1987-06-17','AD_PRES   ',24000.00,         0,   90);
insert into employees values( 101,'Neena      ','1987-06-18','AD_VP     ',17000.00,       100,   90);
insert into employees values( 102,'Lex        ','1987-06-19','AD_VP     ',17000.00,       100,   90);
insert into employees values( 103,'Alexander  ','1987-06-20','IT_PROG   ', 9000.00,       102,   60);
insert into employees values( 104,'Bruce      ','1987-06-21','IT_PROG   ', 6000.00,       103,   60);
insert into employees values( 105,'David      ','1987-06-22','IT_PROG   ', 4800.00,       103,   60);
insert into employees values( 106,'Valli      ','1987-06-23','IT_PROG   ', 4800.00,       103,   60);
insert into employees values( 107,'Diana      ','1987-06-24','IT_PROG   ', 4200.00,       103,   60);
insert into employees values( 114,'Den        ','1987-07-01','PU_MAN    ',11000.00,       100,   30);
insert into employees values( 115,'Alexander  ','1987-07-02','PU_CLERK  ', 3100.00,       114,   30);
insert into employees values( 116,'Shelli     ','1987-07-03','PU_CLERK  ', 2900.00,       114,   30);
insert into employees values( 117,'Sigal      ','1987-07-04','PU_CLERK  ', 2800.00,       114,   30);
insert into employees values( 108,'Nancy      ','1987-06-25','FI_MGR    ',12000.00,       101,  100);
insert into employees values( 109,'Daniel     ','1987-06-26','FI_ACCOUNT', 9000.00,       108,  100);
insert into employees values( 110,'John       ','1987-06-27','FI_ACCOUNT', 8200.00,       108,  100);
insert into employees values( 111,'Ismael     ','1987-06-28','FI_ACCOUNT', 7700.00,       108,  100);
insert into employees values( 112,'Jose Manuel','1987-06-29','FI_ACCOUNT', 7800.00,       108,  100);
insert into employees values( 113,'Luis       ','1987-06-30','FI_ACCOUNT', 6900.00,       108,  100);
insert into employees values( 133,'Jason      ','1987-07-20','ST_CLERK  ', 3300.00,       122,   50);
insert into employees values( 134,'Michael    ','1987-07-21','ST_CLERK  ', 2900.00,       122,   50);
insert into employees values( 135,'Ki         ','1987-07-22','ST_CLERK  ', 2400.00,       122,   50);
insert into employees values( 136,'Hazel      ','1987-07-23','ST_CLERK  ', 2200.00,       122,   50);
insert into employees values( 137,'Renske     ','1987-07-24','ST_CLERK  ', 3600.00,       123,   50);
insert into employees values( 138,'Stephen    ','1987-07-25','ST_CLERK  ', 3200.00,       123,   50);
insert into employees values( 139,'John       ','1987-07-26','ST_CLERK  ', 2700.00,       123,   50);

select * from employees

select job_id,emp_name,salary,avg(salary) over(partition by job_id)
from employees

8. From the above table write a query in SQL to find the highest salaried employees for each designation. 
Return job_id, name and the salary earned.

select Distinct(emp_name),job_id,max(salary) over(partition by job_id) as salary_max
from employees
order by salary_max desc

9. from the above table write a query in SQL to find the employees who are earning more salary than their managers.
Return employee ID, name, and salary, manager ID, manager name and the salary of the manager. 

select distinct(e.emp_name),e.employee_id,e.salary,e.manager_id,a.manager_salary
from employees e
full join (select employee_id,salary as manager_salary
	  from employees 
	  where employee_id in (select distinct(manager_id) from employees)) as a
on e.manager_id = a.employee_id
where e.salary > a.manager_salary
order by 

10.  From the following table write a query in SQL to find those employees who resolve the highest complaint in all quarter and works under the supervision of that manager, holding id 114.
Returns employee name and the number of complaint resolved.
drop table if exists employees
create table employees (
emp_id int not null unique,
emp_name varchar(30),
emp_sex varchar(1),
depart_name varchar(25),
emp_salary int,
qtr1 int,
qtr2 int,
qtr3 int,
qtr4 int,
emp_department int,
manager_id int
);



insert into employees values(100,'Steven     ','M','Production',24000,240,310,275,300,  90,0);       
insert into employees values(101,'Neena      ','F','Production',17000,270,300,275,290,  90,100);     
insert into employees values(102,'Lex        ','M','Audit',17000,300,290,285,310,  80,100);          
insert into employees values(103,'Alexander  ','M','Marketing', 9000,25,270,260,280,  60,102);       
insert into employees values(104,'Bruce      ','M','Marketing', 6000,300,280,275,290,  60,103);      
insert into employees values(105,'David      ','M','Audit', 4800,200,220,250,270,  80,103);          
insert into employees values(106,'Valli      ','F','Marketing', 4800,300,320,330,350,  60,103);      
insert into employees values(107,'Diana      ','F','Marketing', 4200,280,270,310,320,  60,103);      
insert into employees values(114,'Den        ','M','Sales',11000,280,290,300,320 ,  30,101);         
insert into employees values(115,'Alexander  ','M','Sales', 3100,310,300,320,340,  30,108);          
insert into employees values(116,'Shelli     ','F','Sales', 2900,245,260,280,300,  30,108);          
insert into employees values(117,'Sigal      ','F','Sales', 2800,250,370,290,320,  30,108);          
insert into employees values(108,'Nancy      ','M','Administration',12000,260,280,300,310, 100,108); 
insert into employees values(109,'Daniel     ','F','Administration', 9000,220,210,240,260, 100,108); 
insert into employees values(110,'John       ','M','Administration', 8200,300,290,280,320, 100,100); 
insert into employees values(111,'Ismael     ','M','Administration', 7700,280,300,270,310, 100,114); 
insert into employees values(112,'Jose Manuel','M','Administration', 7800,250,280,260,300, 100,114); 
insert into employees values(113,'Luis       ','F','Administration', 6900,300,280,270,310, 100,114); 
insert into employees values(133,'Jason      ','M','Export', 3300,280,270,300,290,  50,122);         
insert into employees values(134,'Michael    ','F','Export', 2900,260,280,290,300,  50,122);         
insert into employees values(135,'Ki         ','F','Export', 2400,240,260,270,290,  50,122)

select * from employees
select b.emp_name,b.total_resolved_query
from (select a.emp_name,a.total_resolved_query,rank() over(order by a.total_resolved_query desc)
from (select emp_name,sum(qtr1+qtr2+qtr3+qtr4) over(partition by emp_id) as total_resolved_query
from employees
where manager_id = 114) as a) as b
where b.rank=1