-- ===========================================
-- 📊 GROUP BY, ROLLUP, and ON DELETE Examples
-- ===========================================

-- ===========================================
-- 1. GROUP BY
-- ===========================================

-- Create a sales table
CREATE TABLE sales (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(10, 2)
);

-- Insert sample sales data
INSERT INTO sales (id, product_name, category, amount) VALUES
(1, 'Phone', 'Electronics', 600.00),
(2, 'Laptop', 'Electronics', 900.00),
(3, 'Notebook', 'Stationery', 3.00),
(4, 'Pen', 'Stationery', 2.00),
(5, 'Monitor', 'Electronics', 250.00);

-- Group by category to get total sales
SELECT category, SUM(amount) AS total_sales
FROM sales
GROUP BY category;

-- ===========================================
-- 2. ROLLUP
-- ===========================================

-- Use ROLLUP to add grand total
SELECT category, SUM(amount) AS total_sales
FROM sales
GROUP BY category WITH ROLLUP;

-- ROLLUP will add a NULL row showing the grand total

-- ===========================================
-- 3. ON DELETE CASCADE (Foreign Key Behavior)
-- ===========================================

-- Create parent table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Create child table: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE CASCADE
);

-- Insert data
INSERT INTO customers (customer_id, name) VALUES
(1, 'Alice'),
(2, 'Bob');

INSERT INTO orders (order_id, customer_id, product) VALUES
(101, 1, 'Laptop'),
(102, 1, 'Phone'),
(103, 2, 'Tablet');

-- Now delete customer with ID = 1
DELETE FROM customers WHERE customer_id = 1;

-- This will automatically delete Alice's related orders too (order_id 101, 102)

-- ===========================================
-- Notes:
-- - GROUP BY groups rows by column values.
-- - ROLLUP adds summary rows to grouped data.
-- - ON DELETE CASCADE makes sure deleting a row from a parent table also deletes related rows in the child table.

-- ===========================================
-- END OF FILE
-- ===========================================
