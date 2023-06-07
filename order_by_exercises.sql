USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' ordered by first name and then last name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' ordered by last name and then first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

-- Find all employees whose last name starts with 'E' ordered by employee number
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

-- Find all employees with a 'q' in their last name ordered by employee number
SELECT * FROM employees WHERE last_name LIKE '%q%' ORDER BY emp_no;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' and are male, ordered by first name and then last name
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M' ORDER BY first_name, last_name;

-- Find all employees whose last name starts or ends with 'E' ordered by employee number
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no;

-- Find all employees whose last name starts and ends with 'E' ordered by employee number
SELECT * FROM employees WHERE last_name LIKE 'E%E' ORDER BY emp_no;

-- Find all employees with a 'q' in their last name but not 'qu' ordered by employee number
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ORDER BY emp_no;

-- Now reverse the sort order for all queries

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC, last_name DESC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE '%q%' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M' ORDER BY first_name DESC, last_name DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%E' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ORDER BY emp_no DESC;
