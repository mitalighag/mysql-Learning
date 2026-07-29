# Day 6 - Sorting Data and Aggregate Functions

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Sort records using the `ORDER BY` clause.
- Arrange data in ascending and descending order.
- Use SQL aggregate functions to perform calculations.
- Count records using `COUNT()`.
- Calculate totals using `SUM()`.
- Find averages using `AVG()`.
- Determine minimum and maximum values using `MIN()` and `MAX()`.

---

# 📖 Introduction

Databases often contain thousands of records. To analyze data efficiently, SQL provides features for sorting records and performing calculations.

In this lesson, we will learn how to arrange data in a meaningful order and generate useful summaries using aggregate functions.

---

# 📌 ORDER BY

The `ORDER BY` clause is used to sort records in ascending or descending order.

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

## Example

```sql
SELECT *
FROM Patients
ORDER BY Age;
```

This query displays patients sorted by age in ascending order.

### 🌍 Real-world Example

A hospital wants to display patients from the youngest to the oldest.

---

# 📌 ASC (Ascending Order)

The `ASC` keyword sorts records from the smallest to the largest value. It is the default sorting order.

## Example

```sql
SELECT *
FROM Patients
ORDER BY Age ASC;
```

This query sorts patients by age from lowest to highest.

---

# 📌 DESC (Descending Order)

The `DESC` keyword sorts records from the largest to the smallest value.

## Example

```sql
SELECT *
FROM Patients
ORDER BY Age DESC;
```

This query displays patients from the oldest to the youngest.

### 🌍 Real-world Example

A company wants to display employees with the highest salaries first.

---

# 📌 COUNT()

The `COUNT()` function returns the total number of records.

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

A hospital wants to know how many patients are currently registered.

---

# 📌 SUM()

The `SUM()` function calculates the total of a numeric column.

## Example

```sql
SELECT SUM(BillAmount)
FROM Patients;
```

This query returns the total bill amount of all patients.

### 🌍 Real-world Example

A hospital calculates the total revenue generated from patient bills.

---

# 📌 AVG()

The `AVG()` function calculates the average value of a numeric column.

## Example

```sql
SELECT AVG(Age)
FROM Patients;
```

This query returns the average age of all patients.

### 🌍 Real-world Example

A school calculates the average marks of students.

---

# 📌 MIN()

The `MIN()` function returns the smallest value in a column.

## Example

```sql
SELECT MIN(Age)
FROM Patients;
```

This query returns the age of the youngest patient.

---

# 📌 MAX()

The `MAX()` function returns the largest value in a column.

## Example

```sql
SELECT MAX(Age)
FROM Patients;
```

This query returns the age of the oldest patient.

### 🌍 Real-world Example

A company wants to find the highest salary among its employees.

---

# 🔑 Key Takeaways

- `ORDER BY` sorts records.
- `ASC` sorts records in ascending order.
- `DESC` sorts records in descending order.
- `COUNT()` returns the number of records.
- `SUM()` calculates the total of numeric values.
- `AVG()` calculates the average value.
- `MIN()` returns the smallest value.
- `MAX()` returns the largest value.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is the purpose of the `ORDER BY` clause?
2. What is the difference between `ASC` and `DESC`?
3. What does the `COUNT()` function return?
4. When would you use the `SUM()` function?
5. What is the difference between `MIN()` and `MAX()`?

## Practical Questions

### 1. Display all patients sorted by age in ascending order.

### 2. Display all patients sorted by age in descending order.

### 3. Find the total number of patients.

### 4. Find the average age of patients.

### 5. Find the youngest patient.

### 6. Find the oldest patient.

### 7. Find the total of all patient bill amounts.

---

# 💭 Reflection

Today, I learned how to organize records using the `ORDER BY` clause and summarize data using SQL aggregate functions. These functions make it easy to analyze large datasets and generate meaningful insights from stored information.
