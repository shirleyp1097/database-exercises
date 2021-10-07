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



SELECT CONCAT(first_name,' ',last_name), current_managers.dept_name, current_managers.manager_name FROM employees
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

SELECT CONCAT(first_name,' ',last_name) AS name, title FROM titles
JOIN employees e on titles.emp_no = e.emp_no
WHERE title = 'Assistant Engineer';

SELECT DISTINCT CONCAT(first_name,' ',last_name) AS name, birth_date, title FROM employees
JOIN titles t on employees.emp_no = t.emp_no
WHERE title = 'Senior Engineer' AND to_date > NOW();

SELECT * FROM departments;
SELECT * FROM dept_emp;


SELECT COUNT(title), title FROM titles
JOIN dept_emp de on titles.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE titles.to_date > NOW() AND de.to_date > NOW()
AND d.dept_name = 'Marketing'
GROUP BY title;

SELECT COUNT(*), month(birth_date), day(birth_date) FROM employees
GROUP BY month(birth_date), day(birth_date);

SELECT gender, COUNT(*), dept_name FROM employees
JOIN dept_emp de on employees.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE dept_name = 'Finance' AND de.to_date > NOW()
GROUP BY gender;


SELECT dept_name, AVG(salary) FROM salaries
JOIN dept_emp de on salaries.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE salaries.to_date > NOW() AND de.to_date > NOW()
GROUP BY dept_name;

SELECT dept_name, AVG(salary) FROM salaries
JOIN dept_emp de on salaries.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE salaries.to_date > NOW() AND de.to_date > NOW()
GROUP BY dept_name;

SELECT dept_name, AVG(salary) FROM salaries
                                       JOIN dept_emp de on salaries.emp_no = de.emp_no
                                       JOIN departments d on de.dept_no = d.dept_no
WHERE year(salaries.from_date) > 1980 AND year(salaries.to_date) < 1990
GROUP BY dept_name;

SELECT first_name, last_name, salary FROM employees
JOIN dept_emp de on employees.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN titles t on employees.emp_no = t.emp_no
JOIN salaries s on employees.emp_no = s.emp_no
WHERE dept_name = 'Research' AND title = 'Staff'
AND t.to_date > NOW() AND de.to_date > NOW()
ORDER BY salary ASC
LIMIT 5;


