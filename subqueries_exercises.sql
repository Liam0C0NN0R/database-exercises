-- Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);


-- Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');


-- Find all the current department managers that are female.
SELECT e.first_name, e.last_name
FROM employees e
WHERE e.gender = 'F' AND e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager dm
    WHERE dm.to_date = '9999-01-01'
);


-- BONUS Find all the department names that currently have female managers.
SELECT d.dept_name
FROM departments d
WHERE d.dept_no IN (
    SELECT dm.dept_no
    FROM dept_manager dm
             JOIN employees e ON dm.emp_no = e.emp_no
    WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
);


-- BONUS Find the first and last name of the employee with the highest salary.
SELECT e.first_name, e.last_name
FROM employees e
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
ORDER BY s.salary DESC
    LIMIT 1;
