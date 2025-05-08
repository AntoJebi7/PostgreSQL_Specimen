-- Create a basic table first
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    department_id INT
);

-- 1. Add a CHECK constraint after table creation
ALTER TABLE employees
ADD CONSTRAINT chk_age CHECK (age >= 18);

-- 2. Add a UNIQUE constraint on email
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);

-- 3. Add a FOREIGN KEY constraint
-- Assume you have another table:
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Now link employees.department_id to departments.department_id
ALTER TABLE employees
ADD CONSTRAINT fk_dept FOREIGN KEY (department_id)
REFERENCES departments(department_id);
