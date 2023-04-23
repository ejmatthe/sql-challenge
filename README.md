# sql-challenge

## Part 1 - Data Modeling
For this section, I used Quick DBD ( https://app.quickdatabasediagrams.com/ ) to draft the entity relationship diagram of the 6 tables. A screenshot is included in this repo.

## Part 2 - Data Engineering
This section included creating the tables in SQL, including all columns. They were created in the following order:
1. titles - This was the first table as the employee table would need to be able to refer back to the "title_id" as a foreign key.
2. employees - This was the second table, as the tables "dept_emp", "dept_managers" and "salaries" all needed to refer back to "emp_no" as a foreign key.
3. salaries - All required connections were already present, so this table was created.
4. departments - This table would be the basis for "dept_no", and the "dept_emp" and "dept_manager" tables would refer to it as a foreign key.
5. dept_emp
6. dept_manager - These tables were the last created as all connections were now present.
Once the tables were created, the data was imported into the tables using pgAdmin.

## Part 3 - Data Analysis
Finally, this segment used SQL to perform the requested queries to list the following information.
1. Employee number, last name, first name, sex, and salary of each employee.
2. First name, last name, and hire date for the employees who were hired in 1986.
3. Manager of each department along with their department number, department name, employee number, last name, and first name.
4. Department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. Each employee in the Sales department, including their employee number, last name, and first name.
7. Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
