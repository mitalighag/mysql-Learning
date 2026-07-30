# Day 8 - SQL Constraints

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Understand what SQL constraints are.
- Explain why constraints are important.
- Use the `NOT NULL` constraint.
- Use the `UNIQUE` constraint.
- Use the `DEFAULT` constraint.
- Use the `CHECK` constraint.
- Combine multiple constraints in a table.

---

# 📖 Introduction

When designing a database, simply creating tables is not enough. We must ensure that only valid, accurate, and meaningful data is stored.

SQL provides **Constraints**, which are rules applied to table columns to maintain data integrity and prevent invalid data from being inserted.

Using constraints helps create reliable and consistent databases.

---

# 📌 What are SQL Constraints?

**SQL Constraints** are rules applied to one or more columns of a table that restrict the type of data that can be stored.

They help ensure that the data in a database is:

- Accurate
- Valid
- Consistent
- Reliable

### 🌍 Real-world Example

Consider an online registration form.

Some fields are mandatory, some must be unique, and some have default values.

For example:

- Name → Required
- Email → Must be unique
- Country → Defaults to "India"
- Age → Must be greater than or equal to 18

These validation rules are similar to SQL Constraints.

---

# 📌 NOT NULL Constraint

The `NOT NULL` constraint ensures that a column cannot contain NULL (empty) values.

It is used when a value is mandatory.

## Syntax

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL
);
```

### Example

```sql
INSERT INTO Students
VALUES (1, 'Rahul', 20);
```

✅ Accepted

```sql
INSERT INTO Students
VALUES (2, NULL, 22);
```

❌ Rejected because the `Name` column cannot be NULL.

### Real-world Example

A hospital cannot create a patient record without the patient's name.

---

# 📌 UNIQUE Constraint

The `UNIQUE` constraint ensures that duplicate values cannot be stored in a column.

It is commonly used for values that should be unique for every record.

## Syntax

```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);
```

### Example

```sql
INSERT INTO Users
VALUES (1, 'Rahul', 'rahul@gmail.com');
```

✅ Accepted

```sql
INSERT INTO Users
VALUES (2, 'Amit', 'rahul@gmail.com');
```

❌ Rejected because the email already exists.

### Real-world Example

Every user should register with a unique email address.

---

# 📌 DEFAULT Constraint

The `DEFAULT` constraint automatically assigns a predefined value when no value is provided during insertion.

## Syntax

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50) DEFAULT 'General'
);
```

### Example

```sql
INSERT INTO Employees
(EmployeeID, Name)
VALUES
(1, 'Rahul');
```

Result:

| EmployeeID | Name | Department |
|------------|------|------------|
| 1 | Rahul | General |

### Real-world Example

If a new employee's department is not specified, the database automatically assigns **General**.

---

# 📌 CHECK Constraint

The `CHECK` constraint ensures that the values stored in a column satisfy a specific condition.

If the condition is not met, the database rejects the record.

## Syntax

```sql
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT CHECK (Age >= 0)
);
```

### Example

```sql
INSERT INTO Patients
VALUES (1, 'Rahul', 25);
```

✅ Accepted

```sql
INSERT INTO Patients
VALUES (2, 'Amit', -5);
```

❌ Rejected because the age cannot be negative.

### Real-world Example

A patient's age cannot be less than zero.

---

# 📌 Combining Constraints

Multiple constraints can be applied to the same table.

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Age INT CHECK (Age >= 18),
    Country VARCHAR(50) DEFAULT 'India'
);
```

This table ensures that:

- StudentID is unique.
- Name is mandatory.
- Email is mandatory and unique.
- Age must be at least 18.
- Country is automatically set to "India" if no value is provided.

---

## 🔑 Key Takeaways

- SQL Constraints help maintain data integrity.
- `NOT NULL` prevents NULL (empty) values.
- `UNIQUE` prevents duplicate values.
- `DEFAULT` automatically assigns a predefined value when none is provided.
- `CHECK` ensures that data satisfies a specified condition.
- Multiple constraints can be combined to enforce multiple validation rules.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is a SQL Constraint?
2. Why do we use constraints in databases?
3. What is the purpose of the `NOT NULL` constraint?
4. How is `UNIQUE` different from `NOT NULL`?
5. When is the `DEFAULT` constraint used?
6. What does the `CHECK` constraint do?
7. Can multiple constraints be applied to the same table?

## Practical Questions

### 1. Create a `Students` table where:

- StudentID is the Primary Key.
- Name cannot be NULL.
- Email must be unique.
- Age must be greater than or equal to 18.
- Country should default to "India".
```
CREATE TABLE Students(
StudentID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE,
Age INT CHECK(Age>=18),
Country VARCHAR(50) DEFAULT 'India'
);
```

### 2. Insert a valid record into the table.
```
INSERT INTO Students
(StudentID, Name, Email, Age,Country)
VALUES
(1,'Rahul','rahul@gmail.com',50,'London');
```
Result:  Accepted

### 3. Try inserting a duplicate email.
```
INSERT INTO Students
(StudentID, Name, Email, Age,Country)
VALUES
(2,'Amit','rahul@gmail.com',45,'France');
```
Result: Rejected (Email must be unique)

### 4. Try inserting a student with a negative age.
```
INSERT INTO Students
(StudentID, Name, Email, Age,Country)
VALUES
(3,'Sneha','sneha@gmail.com',-10,'America');
```
Result: Rejected (Age violates the CHECK constraint)
### 5. Insert a student without specifying the country.
```
INSERT INTO Students
(StudentID, Name,Email, Age)
VALUES
(3,'Sneha','sneha@gmail.com',67);
```
Result: Since Country was not provided, the DEFAULT value "India" is automatically inserted.
---

# 💭 Reflection

Today, I learned how SQL Constraints help maintain data integrity by preventing invalid or inconsistent data from being stored. I explored the four most commonly used constraints—`NOT NULL`, `UNIQUE`, `DEFAULT`, and `CHECK`—and learned how they can be combined to create reliable database tables.

---

# ⏭️ What's Next?

In **Day 9**, I will learn about **Primary Keys and Foreign Keys**, understand the relationship between parent and child tables, and explore how relational databases connect data across multiple tables.
