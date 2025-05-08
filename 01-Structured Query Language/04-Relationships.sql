-- ================================
-- SQL Relationships with Primary Key, Foreign Key, and INNER JOIN
-- ================================

-- 1. CREATE Customers Table:
-- The 'customers' table will have a primary key (customer_id) to uniquely identify each customer.
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,          -- Primary key: Unique identifier for each customer
    first_name VARCHAR(50),               -- Customer's first name
    last_name VARCHAR(50),                -- Customer's last name
    email VARCHAR(100),                   -- Customer's email
    phone VARCHAR(20)                     -- Customer's phone number
);

-- ================================
-- 2. CREATE Products Table:
-- The 'products' table will have a primary key (product_id) to uniquely identify each product.
CREATE TABLE products (
    product_id INT PRIMARY KEY,           -- Primary key: Unique identifier for each product
    product_name VARCHAR(100),            -- Name of the product
    price DECIMAL(10, 2)                  -- Price of the product
);

-- ================================
-- 3. CREATE Orders Table:
-- The 'orders' table will reference the 'customers' table using a foreign key (customer_id).
-- Each order will belong to a customer, so we use customer_id as a foreign key.
CREATE TABLE orders (
    order_id INT PRIMARY KEY,             -- Primary key: Unique identifier for each order
    customer_id INT,                      -- Foreign key: Links to the customer who made the order
    order_date DATE,                      -- Date when the order was placed
    total_amount DECIMAL(10, 2),          -- Total amount for the order
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) -- Foreign key constraint
);

-- ================================
-- 4. CREATE OrderDetails Table:
-- The 'order_details' table is used to store which products are part of each order.
-- It uses both 'order_id' (from orders table) and 'product_id' (from products table) as foreign keys.
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,     -- Primary key: Unique identifier for each order detail
    order_id INT,                         -- Foreign key: Links to the order
    product_id INT,                       -- Foreign key: Links to the product in the order
    quantity INT,                         -- Quantity of the product ordered
    price DECIMAL(10, 2),                 -- Price of the product at the time of order
    FOREIGN KEY (order_id) REFERENCES orders(order_id), -- Foreign key to 'orders' table
    FOREIGN KEY (product_id) REFERENCES products(product_id) -- Foreign key to 'products' table
);

-- ================================
-- 5. Example of Inserting Data into Customers Table:
-- Insert a customer record.
INSERT INTO customers (customer_id, first_name, last_name, email, phone)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '555-1234'),
       (2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678');

-- ================================
-- 6. Example of Inserting Data into Products Table:
-- Insert some product records.
INSERT INTO products (product_id, product_name, price)
VALUES 
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Headphones', 150.00);

-- ================================
-- 7. Example of Inserting Data into Orders Table:
-- Insert some order records for customers.
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES 
(1, 1, '2025-04-27', 2000.00),
(2, 2, '2025-04-25', 950.00);

-- ================================
-- 8. Example of Inserting Data into OrderDetails Table:
-- Insert details for the orders (products and quantities ordered).
INSERT INTO order_details (order_detail_id, order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 1, 1200.00),   -- 1 Laptop for Order 1
(2, 1, 2, 1, 800.00),    -- 1 Smartphone for Order 1
(3, 2, 3, 2, 150.00);    -- 2 Headphones for Order 2

-- ================================
-- 9. Example of INNER JOIN:
-- Using INNER JOIN to retrieve data from multiple related tables.
-- The INNER JOIN combines rows from 'orders', 'customers', and 'order_details' based on matching customer_id and order_id.

-- Get the list of orders with customer details and the products they ordered.
SELECT 
    o.order_id, 
    c.first_name, 
    c.last_name, 
    c.email, 
    o.order_date, 
    od.quantity, 
    p.product_name, 
    p.price, 
    od.quantity * p.price AS total_price
FROM 
    orders o
INNER JOIN 
    customers c ON o.customer_id = c.customer_id
INNER JOIN 
    order_details od ON o.order_id = od.order_id
INNER JOIN 
    products p ON od.product_id = p.product_id;

