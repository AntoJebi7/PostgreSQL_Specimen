-- ===========================
-- Basic CRUD Operations in MySQL
-- ===========================

-- 1. CREATE: Create a simple table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT, -- Auto-increment primary key
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    salary DECIMAL(10,2)
);

-- Insert some data into the table
INSERT INTO employees (first_name, last_name, email, salary) VALUES
('John', 'Doe', 'john.doe@example.com', 50000.00),
('Jane', 'Smith', 'jane.smith@example.com', 60000.00),
('Alice', 'Johnson', 'alice.johnson@example.com', 55000.00);

-- ===========================
-- 2. READ: Retrieve data from the table
-- ===========================

-- Get all employees
SELECT * FROM employees;

-- Get employees with salary greater than 55000
SELECT first_name, last_name, salary 
FROM employees
WHERE salary > 55000;

-- ===========================
-- 3. UPDATE: Modify existing records
-- ===========================

-- Give 'John Doe' a raise to 55000
UPDATE employees
SET salary = 55000.00
WHERE first_name = 'John' AND last_name = 'Doe';

-- ===========================
-- 4. DELETE: Remove records
-- ===========================

-- Delete the employee 'Alice Johnson'
DELETE FROM employees
WHERE first_name = 'Alice' AND last_name = 'Johnson';

-- ===========================
-- 5. View Final Data
-- ===========================

-- View the remaining employees
SELECT * FROM employees;
