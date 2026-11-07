-- =======================================================
-- DAY 1: SQL BASICS - HANDS-ON PRACTICE SCRIPT
-- Topic: Introduction to SQL, DDL, DML, and Basic DQL
-- =======================================================

-- -------------------------------------------------------
-- SECTION 1: DATABASE & TABLE CREATION (DDL)
-- -------------------------------------------------------

-- Step 1: Create a database for Day 1 practice
CREATE DATABASE IF NOT EXISTS day1_sql_practice;
USE day1_sql_practice;

-- Step 2: Create a 'departments' reference table
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50) DEFAULT 'Remote'
);

-- Step 3: Create 'students' table with constraints
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 16),
    dept_id INT,
    course VARCHAR(50) DEFAULT 'General Studies',
    gpa DECIMAL(3, 2),
    enrolled_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- -------------------------------------------------------
-- SECTION 2: INSERTING DATA (DML)
-- -------------------------------------------------------

-- Insert Departments
INSERT INTO departments (dept_id, dept_name, location) VALUES
(101, 'Computer Science', 'Building A'),
(102, 'Data Science', 'Building B'),
(103, 'Cyber Security', 'Building A'),
(104, 'Information Technology', 'Building C');

-- Insert Students
INSERT INTO students (first_name, last_name, email, age, dept_id, course, gpa, enrolled_date) VALUES
('Rahul', 'Sharma', 'rahul.s@example.com', 21, 101, 'Computer Science', 3.85, '2026-01-15'),
('Priya', 'Verma', 'priya.v@example.com', 22, 102, 'Data Science', 3.92, '2026-01-16'),
('Amit', 'Patel', 'amit.p@example.com', 20, 101, 'Computer Science', 3.20, '2026-02-01'),
('Sneha', 'Reddy', 'sneha.r@example.com', 23, 103, 'Cyber Security', 3.65, '2026-02-10'),
('David', 'Miller', 'david.m@example.com', 19, 102, 'Data Science', 3.45, '2026-03-01'),
('Ayesha', 'Khan', 'ayesha.k@example.com', 21, 104, 'Information Technology', 3.75, '2026-03-05'),
('Rohan', 'Gupta', 'rohan.g@example.com', 24, 101, 'Computer Science', 3.10, '2026-03-12');

-- -------------------------------------------------------
-- SECTION 3: QUERYING DATA (DQL - SELECT)
-- -------------------------------------------------------

-- 1. Select everything from students
SELECT * FROM students;

-- 2. Select specific columns
SELECT first_name, last_name, email, course FROM students;

-- 3. Use column aliases (AS)
SELECT 
    first_name AS "First Name", 
    last_name AS "Last Name", 
    gpa AS "Grade Point Average" 
FROM students;

-- -------------------------------------------------------
-- SECTION 4: FILTERING RECORDS (WHERE CLAUSE)
-- -------------------------------------------------------

-- 1. Exact match filter
SELECT * FROM students 
WHERE course = 'Data Science';

-- 2. Comparison filter: Students older than 20
SELECT first_name, age, course FROM students 
WHERE age > 20;

-- 3. Logical AND: Computer Science students with GPA > 3.5
SELECT first_name, course, gpa FROM students 
WHERE course = 'Computer Science' AND gpa > 3.5;

-- 4. Logical OR: Students in Data Science OR Cyber Security
SELECT first_name, course FROM students 
WHERE course = 'Data Science' OR course = 'Cyber Security';

-- 5. Range filter using BETWEEN
SELECT first_name, age, gpa FROM students 
WHERE age BETWEEN 20 AND 22;

-- 6. Membership filter using IN
SELECT first_name, course FROM students 
WHERE course IN ('Computer Science', 'Cyber Security');

-- 7. Negation using NOT IN
SELECT first_name, course FROM students 
WHERE course NOT IN ('Information Technology');

-- -------------------------------------------------------
-- SECTION 5: PATTERN MATCHING (LIKE OPERATOR)
-- -------------------------------------------------------

-- Names starting with 'A'
SELECT first_name, email FROM students 
WHERE first_name LIKE 'A%';

-- Names ending with 'a'
SELECT first_name FROM students 
WHERE first_name LIKE '%a';

-- Email ending with '@example.com'
SELECT first_name, email FROM students 
WHERE email LIKE '%@example.com';

-- -------------------------------------------------------
-- SECTION 6: SORTING AND LIMITING
-- -------------------------------------------------------

-- 1. Sort by GPA in descending order (highest to lowest)
SELECT first_name, course, gpa FROM students 
ORDER BY gpa DESC;

-- 2. Sort by Course ascending, then Age descending
SELECT first_name, course, age FROM students 
ORDER BY course ASC, age DESC;

-- 3. Get the top 3 highest performing students
SELECT first_name, course, gpa FROM students 
ORDER BY gpa DESC 
LIMIT 3;

-- 4. Get distinct courses offered
SELECT DISTINCT course FROM students;
