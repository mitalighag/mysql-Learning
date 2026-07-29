# Day 7 - Grouping and Filtering Data

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Retrieve unique values using the `DISTINCT` keyword.
- Group similar records using the `GROUP BY` clause.
- Filter grouped results using the `HAVING` clause.
- Limit the number of rows returned using the `LIMIT` clause.
- Combine multiple SQL clauses to write efficient queries.

---

# 📖 Introduction

As databases grow larger, retrieving every record is often unnecessary. SQL provides clauses that help organize, summarize, and filter data efficiently.

In this lesson, I will learn how to retrieve unique values, group records, filter grouped data, and limit query results. These techniques are commonly used in reports and data analysis.

---

# 📌 DISTINCT

The `DISTINCT` keyword is used to return only unique values from a column by removing duplicate entries.

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

A hospital wants to know the different cities where its patients live without displaying duplicate city names.

---

# 📌 GROUP BY

The `GROUP BY` clause groups rows that contain the same values in a specified column.

It is commonly used with aggregate functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.

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

This query counts the number of patients from each city.

### 🌍 Real-world Example

A hospital wants to know how many patients belong to each city.

---

# 📌 HAVING

The `HAVING` clause filters grouped data after the `GROUP BY` operation.

Unlike the `WHERE` clause, which filters individual rows, `HAVING` filters groups.

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
HAVING COUNT(*) > 2;
```

This query displays only those cities that have more than two patients.

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

An administrator wants to preview only a few records instead of displaying thousands of rows.

---

# 📌 Combining SQL Clauses

SQL clauses can be combined to create powerful queries.

## Example

```sql
SELECT City, COUNT(*) AS TotalPatients
FROM Patients
GROUP BY City
HAVING COUNT(*) > 2
ORDER BY TotalPatients DESC
LIMIT 3;
```

This query:

- Groups patients by city.
- Counts the number of patients in each city.
- Displays only cities with more than two patients.
- Sorts the result in descending order.
- Displays only the top three results.

---

# 🌍 Mini Project

Assume the following data exists in the **Patients** table.

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
SELECT City, COUNT(*) AS TotalPatients
FROM Patients
GROUP BY City;
```

---

### Task 3

Display cities having more than one patient.

```sql
SELECT City, COUNT(*) AS TotalPatients
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

# 🔑 Key Takeaways

- `DISTINCT` removes duplicate values.
- `GROUP BY` groups records based on a column.
- `HAVING` filters grouped results.
- `LIMIT` restricts the number of rows returned.
- SQL clauses can be combined to create efficient and meaningful queries.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is the purpose of the `DISTINCT` keyword?
2. What is the purpose of the `GROUP BY` clause?
3. What is the difference between `WHERE` and `HAVING`?
4. Why do we use the `LIMIT` clause?
5. Can `GROUP BY` be used without aggregate functions?

## Practical Questions

### 1. Display all unique cities from the `Patients` table.

### 2. Count the number of patients in each city.

### 3. Display only cities having more than one patient.

### 4. Display the first three records from the table.

### 5. Display the number of patients in each city in descending order.

---

# 📚 Week 1 Summary

During Week 1, I learned the fundamentals of MySQL and SQL, including:

- Database Fundamentals
- DBMS and RDBMS
- SQL and MySQL
- MySQL Architecture
- Creating Databases and Tables
- Data Types
- Primary Keys
- AUTO_INCREMENT
- CRUD Operations
- Sorting Data
- Aggregate Functions
- DISTINCT
- GROUP BY
- HAVING
- LIMIT

These concepts form the foundation for designing, managing, and querying relational databases.

---

# 💭 Reflection

This week, I built a strong foundation in SQL by learning how to create databases and tables, perform CRUD operations, sort records, analyze data using aggregate functions, and organize query results with grouping techniques.

These concepts have prepared me to learn advanced SQL topics such as constraints, relationships, joins, subqueries, and normalization in the coming weeks.

---

# ⏭️ What's Next?

In **Week 2**, I will continue my SQL journey by learning:

- Constraints (`NOT NULL`, `UNIQUE`, `DEFAULT`, `CHECK`)
- Foreign Keys
- Relationships
- SQL Joins
- Subqueries
- Views
- Indexes
- Normalization

These topics will help me build well-structured relational databases and write more advanced SQL queries.
