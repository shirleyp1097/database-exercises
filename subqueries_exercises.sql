USE employees;

SELECT * FROM employees
    WHERE hire_date =
(SELECT hire_date FROM employees.employees
WHERE emp_no = 101010);

SELECT first_name, last_name, title FROM employees
JOIN titles t ON employees.emp_no = t.emp_no
    WHERE first_name IN
(SELECT first_name FROM employees
WHERE first_name = 'Aamod')

SELECT first_name, last_name FROM employees
JOIN (
    SELECT emp_no FROM dept_manager
    WHERE to_date > NOW()
) AS managers ON employees.emp_no = managers.emp_no
JOIN current_dept_emp cde on employees.emp_no = cde.emp_no
WHERE gender = 'F'
;

SELECT dept_name FROM departments
JOIN dept_manager dm on departments.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date > NOW() AND gender = 'F';

SELECT first_name, last_name, salary FROM employees
JOIN salaries s on employees.emp_no = s.emp_no
WHERE salary IN (
    SELECT MAX(salary) FROM salaries
    )




