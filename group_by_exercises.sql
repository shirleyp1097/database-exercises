USE employees;

SHOW TABLES;

DESCRIBE titles;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

SELECT DISTINCT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'e%e';

SELECT last_name, COUNT(last_name) FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(first_name), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


