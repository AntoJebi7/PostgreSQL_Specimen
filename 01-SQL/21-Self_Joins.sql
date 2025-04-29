-- ===========================================
-- 🔁 SELF JOIN Example: Employees and Managers
-- ===========================================

-- Table: employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

-- Insert sample data
INSERT INTO employees (emp_id, name, manager_id) VALUES
(1, 'Alice', NULL),     -- Alice is the top-level manager
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'Diana', 2),
(5, 'Evan', 2),
(6, 'Fiona', 3);

-- ===========================================
-- SELF JOIN: Match employee with their manager
-- ===========================================
SELECT 
    e.name AS employee,
    m.name AS manager
FROM 
    employees e
LEFT JOIN 
    employees m ON e.manager_id = m.emp_id;

-- ✅ Result:
-- employee | manager
-- ---------|---------
-- Alice    | NULL
-- Bob      | Alice
-- Charlie  | Alice
-- Diana    | Bob
-- Evan     | Bob
-- Fiona    | Charlie

-- ===========================================
-- Explanation:
-- We're joining the employees table to itself:
-- - 'e' is the employee
-- - 'm' is the manager (another row in same table)

-- ===========================================
-- END OF FILE
-- ===========================================
