-- ================================
-- Basic DELETE SQL Command
-- ================================

-- 1. DELETE: Remove Data from a Table
-- The DELETE statement is used to remove one or more rows from a table.
-- It is important to use the WHERE clause to specify which rows to delete.
-- Without the WHERE clause, all rows will be deleted.

-- Example:
-- Delete a specific employee with employee_id = 1 from the 'employees' table.
DELETE FROM employees
WHERE employee_id = 1;

-- ================================
-- DELETE without WHERE Clause (Delete All Rows)
-- WARNING: This deletes all rows in the table and cannot be undone.
-- Always be cautious when using DELETE without a WHERE clause.

-- Example:
-- Delete all employees from the 'employees' table.
DELETE FROM employees;


-- other examples :
DELETE FROM products WHERE id=1

DELETE FROM products WHERE name='Milk'

DELETE FROM products WHERE price>10

DELETE FROM products WHERE price<10

