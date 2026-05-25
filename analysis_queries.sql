SELECT *
FROM employees;

SELECT e.employee_name,
       d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

SELECT d.department_name,
       AVG(s.salary) AS average_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN salaries s
ON e.employee_id = s.employee_id
GROUP BY d.department_name;

SELECT e.employee_name,
       s.salary
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id
ORDER BY s.salary DESC
LIMIT 1;

SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

SELECT e.employee_name,
       p.rating
FROM employees e
JOIN performance p
ON e.employee_id = p.employee_id
WHERE p.rating = 5;

SELECT status,
       COUNT(*) AS total
FROM attendance
GROUP BY status;

SELECT e.employee_name,
       s.salary
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE s.salary >
(
    SELECT AVG(salary)
    FROM salaries
);