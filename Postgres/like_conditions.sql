-- Create table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT
);

-- Insert data
INSERT INTO employees (name) VALUES
('Alice Smith'),
('Bob Johnson'),
('Alicia Stone'),
('Charlie Wood');

-- Query with WHERE and LIKE
SELECT * FROM employees
WHERE name LIKE 'Ali%';
