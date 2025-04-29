-- ===========================================
-- ⚙️ STORED PROCEDURES & TRIGGERS – Simple Examples
-- ===========================================

-- Use a test database
CREATE DATABASE IF NOT EXISTS test_db;
USE test_db;

-- ===========================================
-- 1. STORED PROCEDURE
-- ===========================================

-- Sample table: employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO employees (name, salary) VALUES
('Alice', 50000),
('Bob', 60000);

-- Create a stored procedure to insert a new employee
DELIMITER //

CREATE PROCEDURE AddEmployee (
    IN empName VARCHAR(100),
    IN empSalary DECIMAL(10, 2)
)
BEGIN
    INSERT INTO employees (name, salary)
    VALUES (empName, empSalary);
END;
//

DELIMITER ;

-- Call the procedure
CALL AddEmployee('Charlie', 55000);

-- ===========================================
-- 2. TRIGGER
-- ===========================================

-- Table to log salary updates
CREATE TABLE salary_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create a trigger to log salary changes
DELIMITER //

CREATE TRIGGER log_salary_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF OLD.salary != NEW.salary THEN
        INSERT INTO salary_log (emp_id, old_salary, new_salary)
        VALUES (OLD.emp_id, OLD.salary, NEW.salary);
    END IF;
END;
//

DELIMITER ;

-- Update a salary to trigger the log
UPDATE employees
SET salary = 62000
WHERE name = 'Bob';

-- Check salary log
SELECT * FROM salary_log;

-- ===========================================
-- Notes:
-- - ✅ Stored Procedures: Reusable code blocks for inserting, updating, etc.
-- - ✅ Triggers: Automatic actions when table data changes.
--   Good for logging, auditing, enforcing rules.

-- ===========================================
-- END OF FILE
-- ===========================================
