USE employees;

-- Find the unique titles in the titles table
SELECT DISTINCT title FROM titles;

-- Find unique last names that start and end with 'E'
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E';

-- Find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';

-- Find the unique last names with a 'q' but not 'qu'
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- Find employees whose unusual name is shared with others
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
