-- List the employee number, last name, first name, sex and salary of each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no

-- List the first name, last name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
	WHERE hire_date >= '01-01-1986' AND hire_date < '01-01-1987'


-- List the manager of each department with department number, department name, employee number, last name, first name
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager ON
employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no


-- List the department number for each employee with employee number, last name, first name and department name
SELECT departments.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no

-- List first name, last name and sex of each employee with first name of Hercules and last name starts with B
SELECT first_name, last_name, sex 
FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, with employee number, last name, first name
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

-- List each employee in Sales and Development departments, with employee number, last name, first name and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

-- List frequency counts, in descending order, of all the employee last names (how man employees share each last name)
SELECT COUNT(last_name) AS "employees with name", last_name
FROM employees
GROUP BY last_name
ORDER BY "employees with name" DESC
