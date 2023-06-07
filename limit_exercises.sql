-- List the first 10 distinct last name sorted in descending order
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
    LIMIT 10;

-- Top 5 salaries and display just the employees number from the salaries table
SELECT emp_no
FROM salaries
ORDER BY salary DESC
    LIMIT 5;

-- The tenth page of results, each page has 5 records
SELECT emp_no
FROM salaries
ORDER BY salary DESC
    LIMIT 45, 5;
