-- ===========================================
-- 📊 ORDER BY, LIMIT, and OFFSET in SQL
-- ===========================================

-- Sample table: products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 850.00),
(2, 'Phone', 600.00),
(3, 'Tablet', 300.00),
(4, 'Headphones', 150.00),
(5, 'Monitor', 200.00),
(6, 'Keyboard', 50.00),
(7, 'Mouse', 30.00);

-- ===========================================
-- 1. ORDER BY: Sort results by a column
-- ===========================================

-- Sort products by price in ascending order
SELECT * FROM products
ORDER BY price ASC;

-- Sort products by price in descending order
SELECT * FROM products
ORDER BY price DESC;

-- ===========================================
-- 2. LIMIT: Restrict number of rows returned
-- ===========================================

-- Get the top 3 cheapest products
SELECT * FROM products
ORDER BY price ASC
LIMIT 3;

-- ===========================================
-- 3. LIMIT with OFFSET: Skip rows before returning
-- ===========================================

-- Skip the first 2 cheapest products and show the next 3
SELECT * FROM products
ORDER BY price ASC
LIMIT 3 OFFSET 2;

-- Alternate syntax in MySQL:
-- LIMIT offset, count
SELECT * FROM products
ORDER BY price ASC
LIMIT 2, 3;

-- ===========================================
-- END OF FILE
-- ===========================================
