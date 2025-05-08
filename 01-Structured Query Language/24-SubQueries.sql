-- ===========================================
-- 🔍 SQL Subqueries – Basic Examples
-- ===========================================

-- Sample table: employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO employees (emp_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'IT', 55000),
(4, 'Diana', 'Sales', 48000),
(5, 'Evan', 'HR', 52000);

-- ===========================================
-- 1. Subquery in WHERE clause
-- ===========================================

-- Find employees who earn more than the average salary
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- ===========================================
-- 2. Subquery in SELECT clause
-- ===========================================

-- Show each employee and the average salary of the company
SELECT name, salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

-- ===========================================
-- 3. Subquery in FROM clause
-- ===========================================

-- Get department-wise average salary using a subquery
SELECT department, avg_salary
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS dept_avg;

-- ===========================================
-- Notes:
-- - A subquery is a query inside another SQL query.
-- - Can be used in SELECT, FROM, or WHERE.
-- - Must return a single value when used in WHERE or SELECT.
-- - Useful for comparisons, calculations, or breaking complex logic.

-- ===========================================
-- END OF FILE
-- ===========================================
