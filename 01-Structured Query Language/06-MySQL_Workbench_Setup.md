# MySQL Workbench Tutorial for Beginners

This guide will show you how to open MySQL Workbench, connect to your server, and run basic SQL queries.

---

## 1. Open MySQL Workbench

- Find and open **MySQL Workbench** from the Start menu or desktop shortcut.

---

## 2. Connect to a MySQL Server

- On the Workbench start screen, you will see a list of saved connections.
- Click on an existing **Local Instance MySQL** connection (or the one you created during installation).
- If prompted, enter the **root password** you set during installation.

> ✅ Tip: You can click **Test Connection** to make sure it's working before connecting.

---

## 3. Open a New SQL Query Tab

- After connecting, you will see the main dashboard.
- Click on **"SQL +"** (New SQL Tab) at the top toolbar.
- A new empty SQL editor window will open where you can type SQL commands.

---

## 4. Write and Run SQL Queries

- In the SQL editor, type your SQL command.  
  Example:
  
  ```sql
  SELECT VERSION();

## 5. Create a New Database (Schema)
In the left sidebar (Navigator panel), right-click on Schemas.

Click Create Schema.

Enter a name for your database (e.g., test_db).

Click Apply, then Finish.

Now you can use it:
```
USE test_db;
```
## 6. Run a Basic Script (like basic.sql)
Open your .sql file:
Go to File ➔ Open SQL Script ➔ Choose your .sql file (like basic.sql).

The contents will open in a new SQL tab.

Click the lightning bolt (⚡) or Ctrl + Shift + Enter to run the full script.

## 7. Viewing Tables and Data
Expand your database under Schemas on the left side.

Expand Tables to see all tables.

Right-click a table ➔ Select Select Rows - Limit 1000 to view the data.