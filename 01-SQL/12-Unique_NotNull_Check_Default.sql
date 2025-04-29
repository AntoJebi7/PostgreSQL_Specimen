-- ==========================================
-- Simple Examples: UNIQUE, NOT NULL, CHECK, DEFAULT
-- ==========================================

-- Create a sample table with all basic constraints
CREATE TABLE users (
    user_id INT PRIMARY KEY,                  -- Primary key (unique + not null by default)
    username VARCHAR(50) UNIQUE,              -- UNIQUE: no duplicate usernames allowed
    email VARCHAR(100) NOT NULL,              -- NOT NULL: email is required
    age INT CHECK (age >= 18),                -- CHECK: must be 18 or older
    status VARCHAR(20) DEFAULT 'active'       -- DEFAULT: if not provided, 'active' is used
);

-- ==========================================
-- Insert examples
-- ==========================================

-- Valid insert
INSERT INTO users (user_id, username, email, age) 
VALUES (1, 'john_doe', 'john@example.com', 25);

-- Omitting 'status' will use the default value 'active'
INSERT INTO users (user_id, username, email, age) 
VALUES (2, 'jane_doe', 'jane@example.com', 30);

-- ==========================================
-- What will cause errors (don’t run, just for notes)
-- ==========================================

-- Duplicate username (violates UNIQUE)
-- INSERT INTO users (user_id, username, email, age) 
-- VALUES (3, 'john_doe', 'another@example.com', 22);

-- Null email (violates NOT NULL)
-- INSERT INTO users (user_id, username, email, age) 
-- VALUES (4, 'new_user', NULL, 20);

-- Age under 18 (violates CHECK)
-- INSERT INTO users (user_id, username, email, age) 
-- VALUES (5, 'teen_user', 'teen@example.com', 16);

-- ==========================================
-- View the data
-- ==========================================
SELECT * FROM users;
