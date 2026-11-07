# 📘 Day 1 of SQL: Introduction to SQL & Core Foundations

Welcome to **Day 1 of your SQL journey!** 🚀

This repository covers the fundamental concepts, theory, and basic queries needed to kickstart your database learning journey. Whether you are aiming for data analytics, software engineering, or data science, SQL is one of the most critical foundational skills.

---

## 📑 Table of Contents
1. [What is Data and a Database?](#1-what-is-data-and-a-database)
2. [What is a DBMS and RDBMS?](#2-what-is-a-dbms-and-rdbms)
3. [What is SQL?](#3-what-is-sql)
4. [Why Learn SQL?](#4-why-learn-sql)
5. [Structure of a Relational Database](#5-structure-of-a-relational-database)
6. [SQL Sub-Languages (Command Types)](#6-sql-sub-languages-command-types)
7. [Common SQL Data Types](#7-common-sql-data-types)
8. [Database Constraints](#8-database-constraints)
9. [Basic SQL Syntax & Practice Queries](#9-basic-sql-syntax--practice-queries)
   - [1. Creating a Database & Table](#1-creating-a-database--table)
   - [2. Inserting Data](#2-inserting-data)
   - [3. Querying Data (SELECT)](#3-querying-data-select)
   - [4. Filtering with WHERE Clause](#4-filtering-with-where-clause)
   - [5. Filtering with Operators](#5-filtering-with-operators)
   - [6. Pattern Matching (LIKE)](#6-pattern-matching-like)
   - [7. Sorting Results (ORDER BY)](#7-sorting-results-order-by)
   - [8. Removing Duplicates (DISTINCT)](#8-removing-duplicates-distinct)
   - [9. Limiting Records (LIMIT)](#9-limiting-records-limit)
10. [Day 1 Quick Cheat Sheet](#10-day-1-quick-cheat-sheet)

---

## 1. What is Data and a Database?

- **Data**: Raw facts, figures, text, numbers, or observations (e.g., student name, price, date).
- **Information**: Processed, structured data that has context and meaning.
- **Database**: An organized collection of structured data stored electronically in a computer system, designed for fast searching, updating, and retrieval.

---

## 2. What is a DBMS and RDBMS?

### DBMS (Database Management System)
A software tool that enables users to define, create, maintain, and control access to a database.
*Examples: Microsoft Access, XML/JSON databases.*

### RDBMS (Relational Database Management System)
An advanced type of DBMS that stores data in a **relational format** — meaning data is organized into **tables (relations)** of rows and columns, and different tables can be linked together using relationships (keys).

**Popular RDBMS Engines:**
- **MySQL** (Open-source, widely used in web applications)
- **PostgreSQL** (Powerful open-source object-relational database)
- **SQLite** (Lightweight, serverless, embedded database)
- **Microsoft SQL Server** (Enterprise database by Microsoft)
- **Oracle Database** (High-performance enterprise database)

---

## 3. What is SQL?

**SQL** stands for **Structured Query Language**.
- Originally developed at IBM in the 1970s (called SEQUEL).
- It is the standard language used to interact with, manage, and manipulate relational databases.
- SQL is **declarative**: you specify **what** data you want to retrieve or alter, and the database engine figures out **how** to fetch or execute it.

---

## 4. Why Learn SQL?

- **Universal Standard**: Supported by almost all relational databases.
- **Data Analysis**: Enables querying millions of rows efficiently.
- **In-Demand Skill**: Essential for Data Analysts, Data Engineers, Data Scientists, and Backend Developers.
- **Reliable & Fast**: Optimized query engines can search and aggregate huge amounts of data in milliseconds.

---

## 5. Structure of a Relational Database

A relational database consists of:
- **Table**: A structured collection of related data (like a spreadsheet sheet).
- **Column / Field / Attribute**: A vertical entity containing a specific type of information (e.g., `email`, `salary`).
- **Row / Record / Tuple**: A single horizontal entry representing one individual item or entity (e.g., a specific employee's details).
- **Primary Key (PK)**: A unique identifier for each record in a table. It cannot be NULL and cannot have duplicate values.
- **Foreign Key (FK)**: A column in one table that references the Primary Key of another table, establishing a relationship between them.

```
+-------------------------------------------------------------+
|                         STUDENTS                            |
+----+-------------+-------------------------+-----+----------+
| id | first_name  | email                   | age | course   |  <-- Columns / Fields
+----+-------------+-------------------------+-----+----------+
|  1 | John        | john@example.com        |  20 | CS       |  <-- Row / Record
|  2 | Sarah       | sarah@example.com       |  22 | Data Sci |
|  3 | Alex        | alex@example.com        |  21 | CS       |
+----+-------------+-------------------------+-----+----------+
```

---

## 6. SQL Sub-Languages (Command Types)

SQL commands are divided into five main categories:

| Category | Full Name | Purpose | Key Commands |
| :--- | :--- | :--- | :--- |
| **DDL** | Data Definition Language | Defines and modifies the database schema/structure | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` |
| **DQL** | Data Query Language | Retrieves stored data from tables | `SELECT` |
| **DML** | Data Manipulation Language | Manages and modifies the data within tables | `INSERT`, `UPDATE`, `DELETE` |
| **DCL** | Data Control Language | Manages access rights and permissions | `GRANT`, `REVOKE` |
| **TCL** | Transaction Control Language | Manages transactions within the database | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

---

## 7. Common SQL Data Types

When creating columns in a table, each column must have a specified data type:

### 1. Numeric
- `INT` / `INTEGER`: Whole numbers (e.g., `25`, `1001`).
- `DECIMAL(p, s)` / `NUMERIC(p, s)`: Exact fixed-point numbers (e.g., `DECIMAL(10, 2)` for currency like `199.99`).
- `FLOAT` / `DOUBLE`: Approximate floating-point numbers.

### 2. String / Text
- `CHAR(n)`: Fixed-length character string (e.g., `CHAR(2)` for state codes `'CA'`).
- `VARCHAR(n)`: Variable-length character string with max size `n` (e.g., `VARCHAR(100)` for names/emails).
- `TEXT`: Long variable-length text.

### 3. Date & Time
- `DATE`: Date in `YYYY-MM-DD` format.
- `TIME`: Time in `HH:MM:SS` format.
- `DATETIME` / `TIMESTAMP`: Date and time combined (`YYYY-MM-DD HH:MM:SS`).

### 4. Boolean
- `BOOLEAN` / `BOOL`: Stores `TRUE` (1) or `FALSE` (0).

---

## 8. Database Constraints

Constraints ensure the accuracy and reliability of the data inside a table:

- `PRIMARY KEY`: Uniquely identifies each record (combination of `NOT NULL` and `UNIQUE`).
- `NOT NULL`: Ensures that a column cannot have empty/NULL values.
- `UNIQUE`: Ensures all values in a column are distinct.
- `DEFAULT`: Sets a default value for a column if none is supplied.
- `CHECK`: Ensures all values in a column satisfy a specific condition (e.g., `age >= 18`).
- `FOREIGN KEY`: Enforces referential integrity between two tables.

---

## 9. Basic SQL Syntax & Practice Queries

### 1. Creating a Database & Table

```sql
-- Create a new database
CREATE DATABASE school_db;

-- Select/use the database
USE school_db;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT, -- In PostgreSQL use SERIAL PRIMARY KEY
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 16),
    course VARCHAR(50) DEFAULT 'General Studies',
    enrolled_date DATE DEFAULT (CURRENT_DATE)
);
```

### 2. Inserting Data

```sql
-- Insert a single record
INSERT INTO students (first_name, last_name, email, age, course, enrolled_date)
VALUES ('Rahul', 'Sharma', 'rahul@example.com', 21, 'Computer Science', '2026-01-15');

-- Insert multiple records
INSERT INTO students (first_name, last_name, email, age, course, enrolled_date)
VALUES 
('Priya', 'Verma', 'priya@example.com', 22, 'Data Science', '2026-01-16'),
('Amit', 'Patel', 'amit@example.com', 20, 'Computer Science', '2026-02-01'),
('Sneha', 'Reddy', 'sneha@example.com', 23, 'Cyber Security', '2026-02-10'),
('David', 'Miller', 'david@example.com', 19, 'Data Science', '2026-03-01');
```

### 3. Querying Data (SELECT)

```sql
-- Select all columns and all rows
SELECT * FROM students;

-- Select specific columns (Best practice)
SELECT first_name, last_name, email FROM students;

-- Using column aliases (renaming column output display)
SELECT first_name AS name, course AS department FROM students;
```

### 4. Filtering with WHERE Clause

The `WHERE` clause filters rows that meet specified conditions:

```sql
-- Find students who are older than 20
SELECT * FROM students 
WHERE age > 20;

-- Find students in Computer Science
SELECT first_name, email, course FROM students 
WHERE course = 'Computer Science';
```

### 5. Filtering with Operators

```sql
-- AND: Both conditions must be true
SELECT * FROM students 
WHERE course = 'Computer Science' AND age >= 21;

-- OR: At least one condition must be true
SELECT * FROM students 
WHERE course = 'Data Science' OR course = 'Cyber Security';

-- BETWEEN: Value within a range (inclusive)
SELECT * FROM students 
WHERE age BETWEEN 20 AND 22;

-- IN: Matches any value in a list
SELECT * FROM students 
WHERE course IN ('Computer Science', 'Data Science');

-- NOT: Negates condition
SELECT * FROM students 
WHERE course NOT IN ('Cyber Security');
```

### 6. Pattern Matching (LIKE)

The `LIKE` operator is used with wildcards:
- `%` represents zero, one, or multiple characters.
- `_` represents a single character.

```sql
-- Names starting with 'P'
SELECT * FROM students 
WHERE first_name LIKE 'P%';

-- Names ending with 'a'
SELECT * FROM students 
WHERE first_name LIKE '%a';

-- Names having 'a' anywhere
SELECT * FROM students 
WHERE first_name LIKE '%a%';

-- Names having 4 letters starting with 'A'
SELECT * FROM students 
WHERE first_name LIKE 'A___';
```

### 7. Sorting Results (ORDER BY)

```sql
-- Sort ascending (default)
SELECT * FROM students 
ORDER BY age ASC;

-- Sort descending
SELECT * FROM students 
ORDER BY age DESC;

-- Multi-column sort: Course alphabetically, then Age descending
SELECT * FROM students 
ORDER BY course ASC, age DESC;
```

### 8. Removing Duplicates (DISTINCT)

```sql
-- View all unique courses available in the table
SELECT DISTINCT course FROM students;
```

### 9. Limiting Records (LIMIT)

```sql
-- Fetch only top 3 records (MySQL / PostgreSQL / SQLite)
SELECT * FROM students 
LIMIT 3;

-- Fetch top 3 oldest students
SELECT * FROM students 
ORDER BY age DESC 
LIMIT 3;
```

---

## 10. Day 1 Quick Cheat Sheet

| Purpose | Syntax Example |
| :--- | :--- |
| **Select All** | `SELECT * FROM table_name;` |
| **Select Specific Columns** | `SELECT col1, col2 FROM table_name;` |
| **Filter by condition** | `SELECT * FROM table_name WHERE col = 'val';` |
| **Multiple conditions** | `SELECT * FROM table_name WHERE c1 = 1 AND c2 = 2;` |
| **Range filter** | `SELECT * FROM table_name WHERE age BETWEEN 18 AND 25;` |
| **List check** | `SELECT * FROM table_name WHERE city IN ('NY', 'SF');` |
| **Pattern search** | `SELECT * FROM table_name WHERE name LIKE 'A%';` |
| **Sort data** | `SELECT * FROM table_name ORDER BY age DESC;` |
| **Limit output** | `SELECT * FROM table_name LIMIT 5;` |
| **Unique values** | `SELECT DISTINCT col FROM table_name;` |

---

## 🎯 Day 1 Practice Goals Checklist
- [x] Understand RDBMS vs DBMS concepts.
- [x] Understand what SQL is and why it is used.
- [x] Memorize the 5 SQL command categories (DDL, DQL, DML, DCL, TCL).
- [x] Know the primary SQL data types and constraints.
- [x] Write basic `SELECT`, `WHERE`, `LIKE`, `IN`, `BETWEEN`, `ORDER BY`, and `LIMIT` queries.

---

⭐ **Stay tuned for Day 2!** Keep practicing and writing queries.
