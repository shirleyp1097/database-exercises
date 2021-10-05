USE employees;

SHOW TABLES;

DESCRIBE employees;

DESCRIBE dept_emp;

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'e%e';

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
    AND day(birth_date) = 25;

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
  AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999;

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC, birth_date;

SELECT *, datediff(NOW(), hire_date) AS 'Days Since Hired' FROM employees
WHERE MONTH(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC, birth_date;

