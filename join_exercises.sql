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

SELECT DISTINCT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN employees AS e
              ON dm.emp_no = e.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE to_date > NOW() AND e.gender = 'F';

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM dept_manager;


SELECT t.title, COUNT(*) FROM dept_emp AS de
JOIN titles t on t.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date > NOW() AND d.dept_name = 'Customer Service'
GROUP BY t.title;

# SELECT DISTINCT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', s.salary AS salary
# FROM dept_manager AS dm
#          JOIN employees AS e
#               ON dm.emp_no = e.emp_no
#          JOIN departments d on dm.dept_no = d.dept_no
#         JOIN salaries s on e.emp_no = s.emp_no
# WHERE dm.to_date > NOW();
#
# SELECT * FROM salaries;
# SELECT * FROM employees;
# SELECT * FROM departments;


SELECT d.dept_name, e.first_name, e.last_name, s.salary
FROM dept_manager AS dm
JOIN employees e on dm.emp_no = e.emp_no
JOIN departments d on dm.dept_no = d.dept_no
JOIN salaries s ON dm.emp_no = s.emp_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
ORDER BY d.dept_name;



SELECT * FROM employees
JOIN dept_emp de on employees.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN (
    SELECT CONCAT(first_name,' ',last_name) AS manager_name, dept_name
    FROM employees AS e
             JOIN dept_manager dm on e.emp_no = dm.emp_no
             JOIN departments AS d ON dm.dept_no = d.dept_no
    WHERE dm.to_date > NOW()
    ) AS current_managers ON current_managers.dept_name = d.dept_name
WHERE de.to_date > NOW();

SELECT CONCAT(first_name,' ',last_name) AS manager_name, dept_name
FROM employees AS e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > NOW();




