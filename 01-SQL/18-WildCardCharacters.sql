-- ===========================================
-- 🎯 SQL Wildcard Characters with LIKE
-- ===========================================

-- Sample table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Insert sample data
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Boston'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Dallas'),
(5, 'Evan', 'Newark'),
(6, 'Albert', 'New Orleans');

-- ===========================================
-- 1. % (Percent Sign) – Matches zero or more characters
-- ===========================================
-- Find names that start with 'A'
SELECT * FROM customers
WHERE name LIKE 'A%';

-- Find cities that end with 'k'
SELECT * FROM customers
WHERE city LIKE '%k';

-- Find cities that contain 'New'
SELECT * FROM customers
WHERE city LIKE '%New%';

-- ===========================================
-- 2. _ (Underscore) – Matches a single character
-- ===========================================
-- Find names that are exactly 5 characters
SELECT * FROM customers
WHERE name LIKE '_____';

-- Find names that start with 'A' and have exactly 6 characters
SELECT * FROM customers
WHERE name LIKE 'A_____';

-- ===========================================
-- 3. ESCAPE character (optional) – when using % or _ literally
-- ===========================================

-- Example: Search for a name containing '50%'
-- (Assume '%' is part of the actual text)  
-- Not used here since no such values in sample

