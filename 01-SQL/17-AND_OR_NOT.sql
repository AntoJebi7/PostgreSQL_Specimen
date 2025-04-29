-- ========================================
-- 🔍 SQL Logical Operators: AND, OR, NOT
-- ========================================

-- Sample table: users
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

-- Insert sample data
INSERT INTO users (user_id, name, age, city) VALUES
(1, 'Alice', 25, 'New York'),
(2, 'Bob', 17, 'Los Angeles'),
(3, 'Charlie', 30, 'Chicago'),
(4, 'Diana', 22, 'New York'),
(5, 'Evan', 19, 'Miami');

-- ========================================
-- 1. AND: All conditions must be TRUE
-- ========================================
-- Select users from New York who are older than 20
SELECT * FROM users
WHERE city = 'New York' AND age > 20;

-- ========================================
-- 2. OR: At least one condition must be TRUE
-- ========================================
-- Select users who are under 18 OR live in Miami
SELECT * FROM users
WHERE age < 18 OR city = 'Miami';

-- ========================================
-- 3. NOT: Negates a condition
-- ========================================
-- Select users who are NOT from New York
SELECT * FROM users
WHERE NOT city = 'New York';

-- You can also combine NOT with AND/OR
-- Users who are NOT (under 20 OR from Miami)
SELECT * FROM users
WHERE NOT (age < 20 OR city = 'Miami');

-- ========================================
-- END OF FILE
-- ========================================
