-- write a query that shows each department along with the name of the current manager for that department.
SELECT
    d.dept_name,
    CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM
    departments d
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
        dm.to_date = '9999-01-01';


-- Find the name of all departments currently managed by women.
SELECT
    d.dept_name,
    CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM
    departments d
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
        dm.to_date = '9999-01-01'
  AND e.gender = 'F';


-- Find the current titles of employees currently working in the Customer Service department.
SELECT
    t.title,
    COUNT(*) AS Total
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
        d.dept_name = 'Customer Service'
  AND de.to_date = '9999-01-01'
  AND t.to_date = '9999-01-01'
GROUP BY
    t.title
ORDER BY
    Total DESC;


-- Find the current salary of all current managers.
SELECT
    d.dept_name AS 'Department Name',
        CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
        s.salary AS 'Salary'
FROM
    departments d
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    employees e ON dm.emp_no = e.emp_no
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
        dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01';


-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT
    CONCAT(emp.first_name, ' ', emp.last_name) AS 'Employee',
        d.dept_name AS 'Department',
        CONCAT(mgr.first_name, ' ', mgr.last_name) AS 'Manager'
FROM
    employees emp
        JOIN
    dept_emp de ON emp.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
        JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        JOIN
    employees mgr ON dm.emp_no = mgr.emp_no
WHERE
        de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';


