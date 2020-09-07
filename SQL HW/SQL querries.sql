--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries AS s
JOIN employees AS e ON e.emp_no=s.emp_no;

--2
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries AS s
JOIN employees AS e ON e.emp_no=s.emp_no;

--3
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments 
JOIN dept_manager AS manager ON departments.dept_no=manager.dept_no
JOIN employees AS e ON manager.emp_no = e.emp_no;

--4
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no=employees.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no

--5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--6
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no=employees.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales';
--7
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no=employees.emp_no
JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';
--8
SELECT last_name, COUNT(last_name) AS frequency_count FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;