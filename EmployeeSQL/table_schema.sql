--creating table departments 
create table departments(
dept_no varchar(30) not null PRIMARY KEY,
dept_name varchar(30));

--creating table dept_manager 
create table dept_manager(
dept_no varchar(30) not null,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
emp_no varchar(30) not null primary Key);

--creating table titles 
create table titles(
title_id varchar(30) not null primary key,
title varchar(30));

--creating table employees 
create table employees(
emp_no varchar(30) not null primary key,
emp_title_id varchar(30),
FOREIGN KEY(emp_title_id) REFERENCES titles(title_id),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(30),
hire_date date);

--creating table dept_emp  
create table dept_emp(
emp_no varchar(30) not null,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
dept_no varchar(30) not null,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

--creating table salaries 
create table salaries(
emp_no varchar(30) not null,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
salary varchar(30));

--import csv files and double check the results
select* from dept_emp where emp_no = '10010'
select* from departments;
select * from dept_manager;
select * from employees where emp_no = '10010';
select * from salaries;
select * from titles;
