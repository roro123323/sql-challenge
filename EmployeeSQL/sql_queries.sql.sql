-- Provided a compilation of the employee number, last name, first name, sex, and salary for each individual employee.
SELECT employees.emp_no,
                employees.first_name,
                employees.last_name,
                employees.sex,
                salaries.salary

from employees 
Inner JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- Display the first name, last name, and hire date of employees who were recruited during the year 1986.
SELECT emp_no,first_name,last_name,.hire_date
FROM employees
WHERE hire_date >= '19860101'
AND   hire_date < '19861231';
-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT
    dept_manager.dept_no,
    departments.dept_name,
    dept_manager.emp_no AS manager_emp_no,
    employees.last_name AS manager_last_name,
    employees.first_name AS manager_first_name
FROM
    dept_manager
INNER JOIN
    departments ON dept_manager.dept_no = departments.dept_no
-- tables share the dept_no colum
INNER JOIN
    employees ON dept_manager.emp_no = employees.emp_no;
-- tables share the emp_no column

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
    departments.dept_no,
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM
    employees
INNER JOIN
    dept_manager ON employees.emp_no = dept_manager.emp_no
-- tables share the emp_no column
INNER JOIN
    departments ON dept_manager.dept_no = departments.dept_no;
-- tables share the dept_no column

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT *
FROM employees
WHERE first_name = 'Hercules'
  AND last_name LIKE 'B%';
  
 --Enlist every employee within the Sales department, providing their individual employee number, last name, and first name.
  SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       departments.dept_name
FROM departments
INNER JOIN dept_emp ON
    dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
    dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';
-- filter dept_name by employees in the Sales department

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       departments.dept_name
FROM departments
INNER JOIN dept_emp ON
    dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
    dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name IN ('Sales', 'Development');
-- includes those in the Development department

-- in descending order, of all the employee last names (that is, how many employees share each last name).
 SELECT last_name,
       COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

  
  





