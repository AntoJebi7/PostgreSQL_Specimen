-- ================================
-- SQL Basic Commands with Explanations
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
-- 2. DROP TABLE:
-- The DROP TABLE statement is used to delete an entire table from the database.
-- This removes the table structure and all the data stored in it.
-- **Warning**: This action is permanent and cannot be undone.

-- Example:
-- Drop the 'employees' table from the database.
DROP TABLE employees;

-- ================================
-- 3. INSERT INTO:
-- The INSERT INTO statement is used to add new records into an existing table.
-- You specify the table name and the values you want to insert into the columns.

-- Example:
-- Insert a new employee into the 'employees' table.
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (1, 'John', 'Doe', 'Sales', 55000);

-- Example for inserting multiple rows:
-- Insert multiple employees into the 'employees' table.
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES 
    (2, 'Jane', 'Smith', 'Marketing', 60000),
    (3, 'Alice', 'Johnson', 'IT', 70000),
    (4, 'Bob', 'Brown', 'HR', 45000);




