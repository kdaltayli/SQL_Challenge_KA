--List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary from public.employees
inner join public.salaries on employees.emp_no=salaries.emp_no;

select count(*) from employees;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name, hire_date FROM EMPLOYEES 
where 
  		hire_date >= '1986-01-01'
  AND hire_date <=  '1986-12-31'

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, employees.emp_no, 
	employees.last_name,employees.first_name from employees 
		join dept_manager on employees.emp_no=dept_manager.emp_no	
			join departments on dept_manager.dept_no=departments.dept_no;

--List the department of each employee with the following information: employee number,
--last name, first name, and department name.
select departments.dept_name, employees.emp_no ,employees.last_name, employees.first_name from employees
	join dept_manager on employees.emp_no=dept_manager.emp_no
		join departments on departments.dept_no=dept_manager.dept_no
		
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name, employees.last_name,employees.sex 
	from employees
	where first_name='Hercules' 
	and 
	last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no , employees.last_name , employees.first_name , departments.dept_name 
from employees
	join dept_emp on employees.emp_no = dept_emp.emp_no
	join departments on dept_emp.dept_no = departments.dept_no where departments.dept_name= 'Sales';

	
--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name from employees 
	inner join dept_emp on employees.emp_no = dept_emp.emp_no
	join departments on departments.dept_no = dept_emp.dept_no 
	where dept_name='Sales' or dept_name='Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Count of Employee" from employees
group by last_name
order by "Count of Employee" desc ;
