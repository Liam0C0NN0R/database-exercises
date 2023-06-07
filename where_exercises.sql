USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E'
SELECT * FROM employees WHERE last_name LIKE 'E%';

-- Find all employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name LIKE '%q%';

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' using OR
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E'
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- Find all employees whose last name starts and ends with 'E'
SELECT * FROM employees WHERE last_name LIKE 'E%E';

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';