USE employees;

SELECT
    CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name',
        DATE_FORMAT(birth_date, '%Y-%m-%d') AS 'DOB'
FROM employees
         LIMIT 10;
