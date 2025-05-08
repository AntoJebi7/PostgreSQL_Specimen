-- ===========================================
-- ⚡ SQL Indexes – Create, Use, Drop
-- ===========================================

-- Sample table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- Insert some data (optional)
INSERT INTO customers (customer_id, name, email, city) VALUES
(1, 'Alice', 'alice@example.com', 'New York'),
(2, 'Bob', 'bob@example.com', 'Los Angeles'),
(3, 'Charlie', 'charlie@example.com', 'Chicago'),
(4, 'Diana', 'diana@example.com', 'New York');

-- ===========================================
-- 1. CREATE INDEX
-- ===========================================

-- Create an index on the 'city' column to speed up searches
CREATE INDEX idx_city ON customers(city);

-- Create a unique index on email (helps enforce uniqueness)
CREATE UNIQUE INDEX idx_email ON customers(email);

-- Try this show command before and after creating index
SHOW INDEXES FROM customers;
-- ===========================================
-- 2. USING INDEX (automatically used by SQL engine)
-- ===========================================

-- Example query that benefits from the index:
SELECT * FROM customers WHERE city = 'New York';

-- You don't have to specify the index — the database uses it automatically when possible

-- ===========================================
-- 3. DROP INDEX
-- ===========================================

-- MySQL syntax to drop an index:
DROP INDEX idx_city ON customers;
DROP INDEX idx_email ON customers;

-- ===========================================
-- Notes:
-- - Indexes improve SELECT performance on large tables.
-- - They slow down INSERT, UPDATE, DELETE slightly (because index also updates).
-- - Use indexes on columns you search or filter by often.
-- - UNIQUE indexes ensure no duplicate values in a column.

-- ===========================================
-- END OF FILE
-- ===========================================
