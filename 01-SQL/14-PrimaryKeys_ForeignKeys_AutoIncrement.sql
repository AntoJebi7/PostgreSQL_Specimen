# 🔑 SQL Basics: PRIMARY KEY, AUTO_INCREMENT, FOREIGN KEY

This file explains three essential SQL concepts with easy-to-understand examples — no JOINs involved.

---

## 1. PRIMARY KEY

A **PRIMARY KEY** uniquely identifies each row in a table.

- It must be **unique**
- It **cannot be NULL**
- Only **one primary key** allowed per table

### 📌 Example:

```
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100)
);
```
AUTO_INCREMENT automatically increases the value for a column, usually used with primary keys.

📌 Example:

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100)
);
✅ Each new product will get the next available product_id (e.g. 1, 2, 3...)

A FOREIGN KEY links one table to another, referencing a column in a different table (usually a PRIMARY KEY).

📌 Example:

-- Parent table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Child table
CREATE TABLE items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
✅ Now, items.category_id must match an existing category_id from the categories table.