create table departments (
	dept_no varchar not null primary key,
	dept_name varchar not null
);
select*from departments;


create table dept_emp (
	emp_no int,
	dept_no varchar not null
);
select*from dept_emp;
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

create table dept_manager (
	dept_no varchar not null,
	emp_no int
);

select*from dept_manager;

create table employees (
	emp_no int primary key,
	emp_title varchar not null,
	birth_date date,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date
);
select*from employees;

create table salaries (
	emp_no int,
	salary dec
);
select*from salaries;

create table titles (
		title_id varchar not null,
		title varchar not null
);

select*from titles;