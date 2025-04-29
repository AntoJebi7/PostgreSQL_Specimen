# 🔗 SQL JOINs – INNER, LEFT, and RIGHT

SQL JOINs are used to combine rows from two or more tables based on related columns.

We'll use two sample tables:

### 🧾 `customers` table

| customer_id | customer_name |
|-------------|---------------|
| 1           | Alice         |
| 2           | Bob           |
| 3           | Charlie       |

### 📦 `orders` table

| order_id | customer_id | product      |
|----------|-------------|--------------|
| 101      | 1           | Laptop       |
| 102      | 2           | Phone        |
| 103      | 4           | Tablet       |

---

## 🔸 1. INNER JOIN

Returns rows where there's a **match in both tables**.

```

SELECT customers.customer_name, orders.product
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;
```

## LEFT JOIN 

```
SELECT customers.customer_name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;
```

## RIGHT JOIN

```
SELECT customers.customer_name, orders.product
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;
```