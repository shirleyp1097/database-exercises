USE employees;
SELECT * FROM employees
WHERE first_name = 'Irene'
OR first_name = 'Vidya'
OR first_name = 'Maya';

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';