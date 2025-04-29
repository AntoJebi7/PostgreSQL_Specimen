-- ===========================================
-- 👁️ SQL Views – Create, Use, and Drop
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
-- 1. CREATE VIEW
-- ===========================================

-- Create a view to show only IT employees
CREATE VIEW it_employees AS
SELECT name, salary
FROM employees
WHERE department = 'IT';

-- ===========================================
-- 2. SELECT FROM VIEW
-- ===========================================

-- Use the view just like a table
SELECT * FROM it_employees;

-- ===========================================
-- 3. UPDATE VIEW (if allowed and simple)
-- ===========================================

-- Update salary of an employee using the view
UPDATE it_employees
SET salary = 62000
WHERE name = 'Bob';

-- This works only if the view is updatable (simple views)

-- ===========================================
-- 4. DROP VIEW
-- ===========================================

-- Delete the view when no longer needed
DROP VIEW it_employees;

-- ===========================================
-- Notes:
-- - Views are virtual tables based on SELECT queries
-- - Useful to simplify complex queries or limit access
-- - Views do not store data, only the query definition

-- ===========================================
-- END OF FILE
-- ===========================================
