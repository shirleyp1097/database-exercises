USE employees;
SELECT * FROM employees
WHERE (first_name = 'Irene'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'male';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE  '%E';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';