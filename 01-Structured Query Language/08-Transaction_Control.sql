-- ============================================
-- Transaction Control in MySQL: COMMIT, ROLLBACK, AUTOCOMMIT
-- ============================================

-- Why use transactions?
-- Transactions make sure a group of SQL operations are completed successfully.
-- If something goes wrong, you can ROLLBACK (undo) changes to maintain data integrity.

-- ============================================
-- 1. Example Setup: Create a table
-- ============================================

CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    account_holder VARCHAR(100),
    balance DECIMAL(10,2)
);

-- Insert initial data
INSERT INTO accounts (account_holder, balance) VALUES 
('Alice', 1000.00),
('Bob', 500.00);

-- ============================================
-- 2. Disable AUTOCOMMIT (Manual Control)
-- ============================================

-- By default, MySQL commits each statement automatically (AUTOCOMMIT = ON).
-- To control transactions manually, you need to turn it off:

SET AUTOCOMMIT = 0; -- Disable Auto-commit
-- SET AUTOCOMMIT = OFF also Disables Auto-commit
-- ============================================
-- 3. Start a Transaction
-- ============================================

-- You don't need a START TRANSACTION command after disabling AUTOCOMMIT, 
-- but it's good practice to make it clear:

START TRANSACTION;

-- Example: Transfer 200 from Alice to Bob
UPDATE accounts
SET balance = balance - 200
WHERE account_holder = 'Alice';

UPDATE accounts
SET balance = balance + 200
WHERE account_holder = 'Bob';

-- ============================================
-- 4. Commit the Changes
-- ============================================

-- If everything is correct, save the changes:

COMMIT;

-- Now the changes are permanent.

-- ============================================
-- 5. Example of Rollback
-- ============================================

-- Start another transaction
START TRANSACTION;

-- Wrong transfer (Mistakenly try to deduct too much)
UPDATE accounts
SET balance = balance - 2000
WHERE account_holder = 'Alice';

-- Realize the mistake BEFORE committing!

-- Undo changes:
ROLLBACK;

-- Nothing will be saved because we rolled back.

-- ============================================
-- 6. Turn AUTOCOMMIT back ON (Optional)
-- ============================================

SET AUTOCOMMIT = 1; -- Enable Auto-commit again

-- Now each statement will be automatically committed.

-- ============================================
-- 7. View Final State
-- ============================================

SELECT * FROM accounts;

-- You should see the correct balances: 
-- Alice: 800.00
-- Bob: 700.00
