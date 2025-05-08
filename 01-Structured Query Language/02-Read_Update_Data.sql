-- ================================
-- SQL CREATE, SELECT, UPDATE, ALTER Commands
-- ================================

-- 1. CREATE TABLE:
-- The CREATE TABLE statement is used to create a new table in the database.
-- You define the columns and their data types when creating the table.

-- Example:
-- Create a table called 'employees' with columns for employee ID, name, department, and salary.
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,      -- ID of the employee, must be unique
    first_name VARCHAR(50),           -- First name of the employee
    last_name VARCHAR(50),            -- Last name of the employee
    department VARCHAR(50),           -- Department the employee works in
    salary DECIMAL(10, 2)             -- Salary of the employee, with two decimal points
);

-- ================================
-- 2. SELECT: Retrieve Data from a Table
-- The SELECT statement is used to query data from a table.
-- You can specify the columns and filter the results using WHERE.

-- Example:
-- Select all columns for all employees from the 'employees' table.
SELECT * FROM employees;

-- Example with WHERE clause:
-- Select the employee details where the department is 'Sales'.
SELECT * FROM employees WHERE department = 'Sales';

-- ================================
-- 3. UPDATE: Modify Data in a Table
-- The UPDATE statement is used to modify existing records in a table.
-- You specify the table, columns, and the new values, then use the WHERE clause to limit which rows to update.

-- Example:
-- Update the salary of the employee with employee_id = 1 to a new salary.
UPDATE employees
SET salary = 60000
WHERE employee_id = 1;

-- Example to update multiple columns:
-- Update the department and salary of the employee with employee_id = 2.
UPDATE employees
SET department = 'Marketing', salary = 65000
WHERE employee_id = 2;

-- ================================
-- 4. ALTER TABLE: Modify Table Structure
-- The ALTER TABLE statement is used to modify the structure of an existing table.
-- You can add, delete, or modify columns in an existing table.

-- Example: 
-- Add a new column 'email' to the 'employees' table.
ALTER TABLE employees
ADD email VARCHAR(100);

-- Example: 
-- Change the data type of the 'salary' column to allow up to 15 digits and 2 decimal places.
ALTER TABLE employees
MODIFY salary DECIMAL(15, 2);

-- Example: 
-- Drop the 'email' column from the 'employees' table.
ALTER TABLE employees
DROP COLUMN email;

