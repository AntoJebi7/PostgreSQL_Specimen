-- ==========================================
-- ALTER, MODIFY, RENAME, AFTER, FIRST in MySQL
-- ==========================================

-- Let's start by creating a sample table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2)
);

-- ==========================================
-- 1. ALTER TABLE: Add a new column
-- ==========================================

-- Add a new column 'department' to the table
ALTER TABLE employees
ADD department VARCHAR(50);

-- ==========================================
-- 2. MODIFY COLUMN: Change data type or size
-- ==========================================

-- Make 'salary' column bigger (change from DECIMAL(10,2) to DECIMAL(12,2))
ALTER TABLE employees
MODIFY salary DECIMAL(12,2);

-- ==========================================
-- 3. RENAME COLUMN: Change a column's name
-- ==========================================

-- Rename 'emp_name' to 'full_name'
ALTER TABLE employees
RENAME COLUMN emp_name TO full_name;

-- ==========================================
-- 4. Use AFTER: Add a new column after a specific column
-- ==========================================

-- Add 'joining_date' AFTER 'salary'
ALTER TABLE employees
ADD joining_date DATE
AFTER salary;

-- ==========================================
-- 5. Use FIRST: Add a new column at the beginning of the table
-- ==========================================

-- Add 'emp_code' as the first column
ALTER TABLE employees
ADD emp_code VARCHAR(10)
FIRST;

-- ==========================================
-- 6. RENAME TABLE: Rename the whole table
-- ==========================================

-- Rename 'employees' table to 'staff'
RENAME TABLE employees TO staff;

-- ==========================================
-- End of file
-- ==========================================
