-- ===========================================
-- 🔗 SQL UNION and UNION ALL Examples
-- ===========================================

-- Table: online_customers
CREATE TABLE online_customers (
    customer_id INT,
    customer_name VARCHAR(100)
);

-- Table: offline_customers
CREATE TABLE offline_customers (
    customer_id INT,
    customer_name VARCHAR(100)
);

-- Insert sample data
INSERT INTO online_customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO offline_customers (customer_id, customer_name) VALUES
(3, 'Charlie'),
(4, 'Diana'),
(5, 'Evan');

-- ===========================================
-- 1. UNION – Combines results and removes duplicates
-- ===========================================
SELECT customer_name FROM online_customers
UNION
SELECT customer_name FROM offline_customers;

-- ✅ Result:
-- Alice
-- Bob
-- Charlie
-- Diana
-- Evan

-- ===========================================
-- 2. UNION ALL – Combines results and keeps duplicates
-- ===========================================
SELECT customer_name FROM online_customers
UNION ALL
SELECT customer_name FROM offline_customers;

-- ✅ Result includes duplicate 'Charlie'

-- ===========================================
-- Notes:
-- - Columns must have the same number and compatible data types
-- - ORDER BY should be placed at the end (after the last SELECT)

-- Example with ORDER BY
SELECT customer_name FROM online_customers
UNION
SELECT customer_name FROM offline_customers
ORDER BY customer_name;

-- ===========================================
-- END OF FILE
-- ===========================================
