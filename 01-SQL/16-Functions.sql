-- ========================================
-- 🔧 SQL Functions: COUNT, MIN, MAX, AVG, SUM, CONCAT
-- ========================================

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
(4, 'Diana', 'HR', 52000),
(5, 'Evan', 'Sales', 45000);

-- ========================================
-- 1. COUNT(): Counts rows
-- ========================================
SELECT COUNT(*) AS total_employees FROM employees;

-- Count employees in IT department
SELECT COUNT(*) AS it_count
FROM employees
WHERE department = 'IT';

-- ========================================
-- 2. MIN(): Get minimum value
-- ========================================
SELECT MIN(salary) AS lowest_salary FROM employees;

-- ========================================
-- 3. MAX(): Get maximum value
-- ========================================
SELECT MAX(salary) AS highest_salary FROM employees;

-- ========================================
-- 4. AVG(): Get average value
-- ========================================
SELECT AVG(salary) AS avg_salary FROM employees;

-- ========================================
-- 5. SUM(): Add up values
-- ========================================
SELECT SUM(salary) AS total_salary FROM employees;

-- ========================================
-- 6. CONCAT(): Combine strings
-- ========================================
-- Concatenate first name and department
SELECT CONCAT(name, ' - ', department) AS employee_info
FROM employees;

-- ========================================
-- END OF FILE
-- ========================================
