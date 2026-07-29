# Day 7 - Grouping and Filtering Data

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Group records using the `GROUP BY` clause.
- Filter grouped results using the `HAVING` clause.
- Retrieve unique values using `DISTINCT`.
- Limit the number of records displayed using `LIMIT`.
- Apply multiple SQL concepts to solve real-world problems.

---

# 📖 Introduction

As databases grow larger, simply retrieving records is often not enough. SQL provides powerful clauses that help organize, summarize, and filter data efficiently.

In this lesson, we will learn how to group similar records, remove duplicate values, filter grouped data, and limit query results.

---

# 📌 DISTINCT

The `DISTINCT` keyword is used to retrieve only unique values from a column.

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

## Example

```sql
SELECT DISTINCT City
FROM Patients;
```

This query displays each city only once, even if multiple patients belong to the same city.

### 🌍 Real-world Example

A hospital wants a list of all cities where its patients live without showing duplicate city names.

---

# 📌 GROUP BY

The `GROUP BY` clause groups rows that have the same values in a specified column.

## Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

## Example

```sql
SELECT City, COUNT(*)
FROM Patients
GROUP BY City;
```

This query displays the number of patients in each city.

### 🌍 Real-world Example

A hospital wants to know how many patients belong to each city.

---

# 📌 HAVING

The `HAVING` clause filters grouped records after the `GROUP BY` operation.

## Syntax

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

## Example

```sql
SELECT City, COUNT(*)
FROM Patients
GROUP BY City
HAVING COUNT(*) > 5;
```

This query displays only those cities that have more than five patients.

### 🌍 Real-world Example

A hospital wants to identify cities with a large number of registered patients.

---

# 📌 LIMIT

The `LIMIT` clause restricts the number of rows returned by a query.

## Syntax

```sql
SELECT *
FROM table_name
LIMIT number;
```

## Example

```sql
SELECT *
FROM Patients
LIMIT 5;
```

This query displays only the first five patient records.

### 🌍 Real-world Example

An administrator wants to preview only the first few records instead of displaying thousands of rows.

---

# 📌 Combining Clauses

SQL clauses can be combined to create powerful queries.

## Example

```sql
SELECT City, COUNT(*)
FROM Patients
GROUP BY City
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;
```

This query:

- Groups patients by city.
- Counts patients in each city.
- Displays only cities with more than two patients.
- Sorts the result in descending order.

---

# 🌍 Mini Project

Suppose the **Patients** table contains the following data:

| PatientID | Name | Age | City |
|-----------|------|-----|------|
| 1 | Rahul | 25 | Mumbai |
| 2 | Priya | 30 | Delhi |
| 3 | Amit | 25 | Mumbai |
| 4 | Sneha | 28 | Pune |
| 5 | Karan | 35 | Delhi |

### Task 1

Display all unique cities.

```sql
SELECT DISTINCT City
FROM Patients;
```

---

### Task 2

Count the number of patients in each city.

```sql
SELECT City, COUNT(*)
FROM Patients
GROUP BY City;
```

---

### Task 3

Display cities having more than one patient.

```sql
SELECT City, COUNT(*)
FROM Patients
GROUP BY City
HAVING COUNT(*) > 1;
```

---

### Task 4

Display only the first three patient records.

```sql
SELECT *
FROM Patients
LIMIT 3;
```

---

# 📚 Week 1 Summary

During Week 1, I learned the fundamentals of MySQL and SQL.

### Topics Covered

- Database Fundamentals
- DBMS
- RDBMS
- SQL and MySQL
- MySQL Architecture
- CREATE DATABASE
- USE
- CREATE TABLE
- Data Types
- PRIMARY KEY
- AUTO_INCREMENT
- INSERT INTO
- SELECT
- WHERE
- AND
- OR
- UPDATE
- DELETE
- ORDER BY
- Aggregate Functions
- DISTINCT
- GROUP BY
- HAVING
- LIMIT

---

# 🔑 Key Takeaways

- `DISTINCT` removes duplicate values.
- `GROUP BY` groups similar records.
- `HAVING` filters grouped results.
- `LIMIT` restricts the number of returned rows.
- SQL clauses can be combined to create powerful and efficient queries.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is the purpose of the `DISTINCT` keyword?
2. What is the difference between `WHERE` and `HAVING`?
3. Why do we use the `GROUP BY` clause?
4. What is the purpose of the `LIMIT` clause?
5. Can `GROUP BY` be used with aggregate functions? Explain.

## Practical Questions

### 1. Display all unique cities from the `Patients` table.

### 2. Count the number of patients in each city.

### 3. Display only cities having more than two patients.

### 4. Display the first five records from the table.

### 5. Display the number of patients in each city and sort the result in descending order.

---

# 💭 Reflection

This week, I learned the fundamentals of SQL and MySQL. I can now create databases and tables, insert, retrieve, update, and delete data, sort records, perform calculations using aggregate functions, and organize data using grouping techniques.

These concepts provide a strong foundation for writing SQL queries and preparing for advanced topics such as constraints, relationships, joins, and subqueries.

---

# ⏭️ What's Next?

In **Week 2**, I will explore advanced SQL concepts, including:

- Constraints (`NOT NULL`, `UNIQUE`, `DEFAULT`, `CHECK`)
- Foreign Keys
- Relationships
- Joins
- Subqueries
- Views
- Indexes
- Normalization

These topics will help me design relational databases and write more advanced SQL queries.
