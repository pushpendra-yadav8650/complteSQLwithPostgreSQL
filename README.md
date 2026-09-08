
# 📚 SQL PRACTICE GUIDE

> **“Every database begins with a single table,
> and every SQL expert begins with a single query.”**

---

## 1. What is SQL?

**SQL (Structured Query Language)** is used to communicate with databases.

With SQL, we can:

* Create databases and tables
* Insert data
* Read data
* Update data
* Delete data
* Filter and sort data
* Join multiple tables
* Calculate statistics using aggregate functions

### Example

```sql
SELECT * FROM students;
```

This query asks the database to show **all records** from the `students` table.

---

# 2. Creating a Table

A table stores information in **rows and columns**.

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    marks INT
);
```

### Table Structure

| Column | Data Type | Description       |
| ------ | --------- | ----------------- |
| id     | SERIAL    | Unique student ID |
| name   | VARCHAR   | Student name      |
| age    | INT       | Student age       |
| city   | VARCHAR   | Student city      |
| marks  | INT       | Student marks     |

---

# 3. INSERT — Adding Data

Every database starts with data.

```sql
INSERT INTO students (name, age, city, marks)
VALUES
('Rahul', 20, 'Delhi', 85),
('Aman', 21, 'Mumbai', 78),
('Priya', 20, 'Jaipur', 92),
('Neha', 22, 'Lucknow', 88);
```

### Remember

> **INSERT means bringing new information into your database.**

---

# 4. SELECT — Reading Data

The `SELECT` statement retrieves information.

```sql
SELECT * FROM students;
```

Select specific columns:

```sql
SELECT name, marks
FROM students;
```

---

# 5. WHERE — Filtering Data

`WHERE` helps us find only the records we need.

```sql
SELECT *
FROM students
WHERE marks > 80;
```

### More Examples

```sql
SELECT *
FROM students
WHERE city = 'Delhi';
```

```sql
SELECT *
FROM students
WHERE age >= 20;
```

---

# 6. ORDER BY — Sorting Data

Sort students according to their marks:

```sql
SELECT *
FROM students
ORDER BY marks DESC;
```

Ascending order:

```sql
SELECT *
FROM students
ORDER BY marks ASC;
```

---

# 7. UPDATE — Changing Data

Sometimes information changes.

```sql
UPDATE students
SET marks = 90
WHERE name = 'Aman';
```

> ⚠️ Always use `WHERE` carefully with `UPDATE`.

---

# 8. DELETE — Removing Data

```sql
DELETE FROM students
WHERE name = 'Rahul';
```

> ⚠️ A missing `WHERE` can delete every row in the table.

---

# 9. Aggregate Functions

Aggregate functions help us understand data.

### COUNT

```sql
SELECT COUNT(*)
FROM students;
```

### AVG

```sql
SELECT AVG(marks)
FROM students;
```

### MAX

```sql
SELECT MAX(marks)
FROM students;
```

### MIN

```sql
SELECT MIN(marks)
FROM students;
```

### SUM

```sql
SELECT SUM(marks)
FROM students;
```

---

# 10. GROUP BY

`GROUP BY` groups similar records together.

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city;
```

Example result:

| City   | Students |
| ------ | -------: |
| Delhi  |        5 |
| Mumbai |        3 |
| Jaipur |        4 |

---

# 11. HAVING

`HAVING` filters grouped results.

```sql
SELECT city, COUNT(*)
FROM students
GROUP BY city
HAVING COUNT(*) > 2;
```

### Important Difference

| WHERE                         | HAVING                       |
| ----------------------------- | ---------------------------- |
| Filters rows                  | Filters groups               |
| Used before grouping          | Used after grouping          |
| Works with individual records | Works with aggregate results |

---

# 12. SQL Operators

## Comparison Operators

```text
=       Equal
<>      Not equal
>       Greater than
<       Less than
>=      Greater than or equal
<=      Less than or equal
```

## Logical Operators

```text
AND
OR
NOT
```

Example:

```sql
SELECT *
FROM students
WHERE marks > 80 AND age >= 20;
```

---

# 13. LIKE Operator

Search for patterns in text.

```sql
SELECT *
FROM students
WHERE name LIKE 'A%';
```

This finds names beginning with **A**.

```sql
SELECT *
FROM students
WHERE name LIKE '%a';
```

This finds names ending with **a**.

---

# 14. BETWEEN

Find values within a range.

```sql
SELECT *
FROM students
WHERE marks BETWEEN 70 AND 90;
```

---

# 15. IN

Search for multiple possible values.

```sql
SELECT *
FROM students
WHERE city IN ('Delhi', 'Mumbai', 'Jaipur');
```

---

# 16. JOINS

A database becomes powerful when multiple tables can work together.

Suppose we have:

### Students

| id | name  |
| -: | ----- |
|  1 | Rahul |
|  2 | Priya |

### Courses

| student_id | course       |
| ---------: | ------------ |
|          1 | Python       |
|          2 | Data Science |

We can connect them using a `JOIN`.

```sql
SELECT students.name, courses.course
FROM students
JOIN courses
ON students.id = courses.student_id;
```

---

# 17. SQL Practice Questions

Try solving these without looking at the answer.

### Beginner

1. Display all students.
2. Display only student names.
3. Find students whose marks are greater than 80.
4. Find students from Delhi.
5. Sort students by marks.
6. Find the highest marks.
7. Find the lowest marks.
8. Find the average marks.
9. Count the number of students.
10. Find students whose age is between 18 and 22.

### Intermediate

11. Group students by city.
12. Count students in each city.
13. Find cities having more than 3 students.
14. Find students whose names start with `A`.
15. Find students with marks between 70 and 90.
16. Use `CASE` to categorize students as Pass/Fail.
17. Find the second-highest marks.
18. Find duplicate names.
19. Use a subquery to find students above average marks.
20. Join students with courses.

---

# 18. SQL Projects

Practice becomes meaningful when you build something real.

## Project 1 — Student Management System

Tables:

```text
students
courses
teachers
marks
attendance
```

Practice:

* INSERT
* SELECT
* UPDATE
* DELETE
* WHERE
* GROUP BY
* HAVING
* JOIN
* Subqueries

---

## Project 2 — Library Management System

Tables:

```text
books
students
authors
borrow_records
```

Questions:

* Which books are available?
* Which student borrowed the most books?
* Which books are overdue?
* Who borrowed a particular book?

---

## Project 3 — E-Commerce Database

Tables:

```text
customers
products
orders
order_items
payments
```

Questions:

* What is the total revenue?
* Which product sells the most?
* Who is the highest-spending customer?
* What is the average order value?

---

# 19. PostgreSQL Practice

For PostgreSQL:

```sql
CREATE DATABASE sql_practice;
```

Connect to the database and create your tables.

You can also use:

```sql
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary NUMERIC(10,2)
);
```

---

# 20. Your SQL Journey

> **At first, SQL may look like a collection of strange commands.**
>
> `SELECT`, `WHERE`, `JOIN`, `GROUP BY`...
>
> But slowly, the commands become familiar.
> The tables begin to make sense.
> The errors become lessons.
> And one day, you stop memorizing queries—
> **you start thinking in data.**
>
> Keep practicing.
> Keep making mistakes.
> Keep solving problems.
>
> **Every query you write today is building the developer you will become tomorrow.** 🚀

---

# 🎯 Final Challenge

Build a complete **Student Management Database** using PostgreSQL.

Your database should contain:

* Students
* Courses
* Teachers
* Marks
* Attendance

Then write at least **30 SQL queries** using:

```text
CREATE
INSERT
SELECT
WHERE
ORDER BY
UPDATE
DELETE
LIKE
IN
BETWEEN
COUNT
SUM
AVG
MIN
MAX
GROUP BY
HAVING
CASE
JOIN
SUBQUERY
```

## Final Goal

**Don't just learn SQL.**

**Build with it.**

**Query it.**

**Break it.**

**Fix it.**

**And eventually, let the database tell the story hidden inside its data.** ❤️
