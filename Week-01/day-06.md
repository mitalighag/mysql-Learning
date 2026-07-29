# Day 6 - Aggregate Functions

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Understand the purpose of SQL aggregate functions.
- Count records using `COUNT()`.
- Calculate totals using `SUM()`.
- Find averages using `AVG()`.
- Determine minimum values using `MIN()`.
- Determine maximum values using `MAX()`.
- Perform basic data analysis using SQL.

---

# 📖 Introduction

Databases often store thousands or even millions of records. Instead of viewing every record individually, SQL provides **aggregate functions** that summarize data and produce meaningful insights.

Aggregate functions perform calculations on multiple rows and return a single result. They are commonly used for reporting, analytics, and decision-making.

---

# 📌 COUNT()

The `COUNT()` function returns the total number of records in a table or the number of non-NULL values in a column.

## Syntax

```sql
SELECT COUNT(column_name)
FROM table_name;
```

## Example

```sql
SELECT COUNT(*)
FROM Patients;
```

This query returns the total number of patients.

### 🌍 Real-world Example

A hospital administrator wants to know how many patients are currently registered in the hospital database.

---

# 📌 SUM()

The `SUM()` function calculates the total value of a numeric column.

## Syntax

```sql
SELECT SUM(column_name)
FROM table_name;
```

## Example

```sql
SELECT SUM(BillAmount)
FROM Patients;
```

This query returns the total bill amount of all patients.

### 🌍 Real-world Example

A hospital calculates its total revenue by adding all patient bill amounts.

---

# 📌 AVG()

The `AVG()` function calculates the average value of a numeric column.

## Syntax

```sql
SELECT AVG(column_name)
FROM table_name;
```

## Example

```sql
SELECT AVG(Age)
FROM Patients;
```

This query returns the average age of all patients.

### 🌍 Real-world Example

A school calculates the average marks of students to evaluate overall performance.

---

# 📌 MIN()

The `MIN()` function returns the smallest value in a column.

## Syntax

```sql
SELECT MIN(column_name)
FROM table_name;
```

## Example

```sql
SELECT MIN(Age)
FROM Patients;
```

This query returns the age of the youngest patient.

### 🌍 Real-world Example

A company wants to find the lowest salary among its employees.

---

# 📌 MAX()

The `MAX()` function returns the largest value in a column.

## Syntax

```sql
SELECT MAX(column_name)
FROM table_name;
```

## Example

```sql
SELECT MAX(Age)
FROM Patients;
```

This query returns the age of the oldest patient.

### 🌍 Real-world Example

A company wants to identify its highest-paid employee.

---

# 📌 Using Multiple Aggregate Functions

Multiple aggregate functions can be used in a single query.

## Example

```sql
SELECT
COUNT(*) AS TotalPatients,
AVG(Age) AS AverageAge,
MIN(Age) AS YoungestPatient,
MAX(Age) AS OldestPatient
FROM Patients;
```

This query returns multiple statistics about the patient data in a single result.

---

# 🔑 Key Takeaways

- Aggregate functions summarize data.
- `COUNT()` returns the number of records.
- `SUM()` calculates the total of numeric values.
- `AVG()` calculates the average value.
- `MIN()` returns the smallest value.
- `MAX()` returns the largest value.
- Multiple aggregate functions can be combined in one query.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is an aggregate function?
2. What is the purpose of the `COUNT()` function?
3. When would you use the `SUM()` function?
4. What is the difference between `MIN()` and `MAX()`?
5. Can multiple aggregate functions be used in a single query?

## Practical Questions

### 1. Count the total number of patients.

```sql
SELECT COUNT(*)
FROM Patients;
```

### 2. Find the total bill amount of all patients.

### 3. Find the average age of patients.

### 4. Find the youngest patient.

### 5. Find the oldest patient.

### 6. Write a query that displays:

- Total number of patients
- Average age
- Youngest patient
- Oldest patient

---

# 💭 Reflection

Today, I learned how SQL aggregate functions summarize data and help generate useful insights from a database. Instead of viewing every record individually, I can now count records, calculate totals, find averages, and identify the minimum and maximum values using simple SQL queries.
