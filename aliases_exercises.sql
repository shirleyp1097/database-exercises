USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB FROM employees.employees
LIMIT 10;

SELECT * FROM dept_emp;