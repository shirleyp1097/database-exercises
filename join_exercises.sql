USE employees;

SHOW TABLES;

DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE employees;

SELECT DISTINCT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM dept_manager AS dm
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date > NOW();

SELECT * FROM dept_manager;