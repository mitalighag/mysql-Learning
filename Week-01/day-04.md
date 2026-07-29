# Day 4 - Inserting and Retrieving Data

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Insert records into a table using the `INSERT INTO` statement.
- Retrieve data using the `SELECT` statement.
- Display all columns or selected columns.
- Filter records using the `WHERE` clause.
- Use comparison operators to search for data.
- Combine multiple conditions using `AND` and `OR`.

---

# 📖 Introduction

Creating a database and tables is only the first step. A database becomes useful when we start storing and retrieving information.

In this lesson, we will learn how to insert records into a table and retrieve specific information using SQL queries. These are some of the most frequently used SQL commands in real-world applications.

---

# 📌 INSERT INTO

The `INSERT INTO` statement is used to add new records to a table.

## Syntax

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

## Example

```sql
INSERT INTO Patients (Name, Age, City)
VALUES ('Rahul', 25, 'Mumbai');
```

This query inserts a new patient into the **Patients** table.

### 🌍 Real-world Example

When a patient visits a hospital for the first time, their details are entered into the hospital database. The `INSERT INTO` statement performs this task.

---

# 📌 SELECT

The `SELECT` statement is used to retrieve data from a table.

## Syntax

```sql
SELECT * FROM table_name;
```

## Example

```sql
SELECT * FROM Patients;
```

This query displays all records from the **Patients** table.

### 🌍 Real-world Example

A receptionist wants to view all registered patients. The `SELECT` statement retrieves that information from the database.

---

# 📌 Selecting Specific Columns

Instead of displaying every column, we can retrieve only the required columns.

## Syntax

```sql
SELECT column1, column2
FROM table_name;
```

## Example

```sql
SELECT Name, City
FROM Patients;
```

This query displays only the patient's name and city.

### 🌍 Why Use It?

Retrieving only the required columns improves readability and reduces unnecessary data.

---

# 📌 WHERE Clause

The `WHERE` clause is used to filter records based on a condition.

## Syntax

```sql
SELECT *
FROM table_name
WHERE condition;
```

## Example

```sql
SELECT *
FROM Patients
WHERE Age > 25;
```

This query displays only patients older than 25 years.

### 🌍 Real-world Example

A hospital wants to find patients above a certain age for a health check-up.

---

# 📌 Comparison Operators

Comparison operators are used with the `WHERE` clause to compare values.

| Operator | Meaning | Example |
|----------|---------|---------|
| `=` | Equal To | `Age = 25` |
| `>` | Greater Than | `Age > 25` |
| `<` | Less Than | `Age < 25` |
| `>=` | Greater Than or Equal To | `Age >= 18` |
| `<=` | Less Than or Equal To | `Age <= 60` |
| `!=` | Not Equal To | `City != 'Mumbai'` |

### Example

```sql
SELECT *
FROM Patients
WHERE City = 'Mumbai';
```

---

# 📌 AND Operator

The `AND` operator combines multiple conditions. All conditions must be true.

## Syntax

```sql
SELECT *
FROM table_name
WHERE condition1 AND condition2;
```

## Example

```sql
SELECT *
FROM Patients
WHERE Age > 25
AND City = 'Mumbai';
```

This query returns patients who are older than 25 **and** live in Mumbai.

### 🌍 Real-world Example

A hospital wants to find patients above 25 years of age who belong to Mumbai.

---

# 📌 OR Operator

The `OR` operator returns records if at least one condition is true.

## Syntax

```sql
SELECT *
FROM table_name
WHERE condition1 OR condition2;
```

## Example

```sql
SELECT *
FROM Patients
WHERE City = 'Mumbai'
OR City = 'Pune';
```

This query displays patients from Mumbai or Pune.

### 🌍 Real-world Example

A company wants to find employees working in either Mumbai or Pune.

---

# 🔑 Key Takeaways

- The `INSERT INTO` statement adds new records to a table.
- The `SELECT` statement retrieves data from a table.
- `SELECT *` displays all columns.
- Specific columns can be retrieved by mentioning their names.
- The `WHERE` clause filters records based on conditions.
- Comparison operators help compare values.
- `AND` requires all conditions to be true.
- `OR` requires at least one condition to be true.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is the purpose of the `INSERT INTO` statement?
2. What is the difference between `SELECT *` and selecting specific columns?
3. Why do we use the `WHERE` clause?
4. What is the difference between `AND` and `OR`?
5. Name three comparison operators used in SQL.

## Practical Questions

### 1. Insert the following record into the `Patients` table:

- Name: Priya
- Age: 30
- City: Delhi

### 2. Display all records from the `Patients` table.

### 3. Display only the `Name` and `Age` columns.

### 4. Display patients whose age is greater than 25.

### 5. Display patients who live in Mumbai.

### 6. Display patients who are older than 25 and live in Delhi.

### 7. Display patients who live in Mumbai or Pune.

---

# 💭 Reflection

Today, I learned how to insert records into a database and retrieve information using SQL queries. I also understood how to filter records using the `WHERE` clause and combine multiple conditions using `AND` and `OR`. These commands are fundamental for working with data in real-world database applications.
