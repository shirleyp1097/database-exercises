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


SELECT first_name, last_name, hire_date FROM employees
WHERE gender = 'F'
ORDER BY hire_date DESC;

DESCRIBE titles;
SELECT DISTINCT title FROM titles;
SELECT title, COUNT(*) AS amount FROM titles
GROUP BY title
ORDER BY amount DESC;

SELECT from_date, title, COUNT(*) AS amount FROM titles
WHERE title LIKE '%staff%'
GROUP BY from_date, title
ORDER BY amount DESC;

SELECT MAX(emp_no), title FROM titles
WHERE title LIKE '%engineer%'
GROUP BY title;

DESCRIBE employees;

SELECT emp_no FROM employees
WHERE title LIKE '%engineer%';

# what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)
# what are the top three most common job titles?
# what is the most common ‘from date’ for job titles? for staff only?
# what is the highest employee number for an engineer?
# what is the most common birthday?
# what is the most common female birthday? male?
# what is the most common hire date for female and male employees?
# what is the longest last name of someone born on March 8, 1952?
# what is the lowest employee number for the first senior engineers in the company?