# Day 3 - Creating Databases and Tables

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Create a new database using SQL.
- Select a database for use.
- Create tables inside a database.
- Understand common SQL data types.
- Define a Primary Key.
- Use AUTO_INCREMENT to generate unique IDs.
- 
## 📖 Introduction

After understanding MySQL Architecture, the next step is to create our own database and tables.

A database stores related information, while tables organize that information into rows and columns. In this lesson, we will learn how to create databases and tables using SQL and understand the purpose of different data types and constraints.
## 📌 CREATE DATABASE

The `CREATE DATABASE` statement is used to create a new database in MySQL.

### Syntax

```sql
CREATE DATABASE database_name;
```

### Example

```sql
CREATE DATABASE HospitalDB;
```

This command creates a new database named **HospitalDB**.

### 🌍 Real-world Example

Imagine you are developing a Hospital Management System.

Before storing information about patients, doctors, and appointments, you first need a dedicated database to hold all the related data. The `CREATE DATABASE` command creates that storage space.

## 📌 USE

The `USE` statement is used to select a specific database for the current session. Once a database is selected, all SQL queries and operations are performed on that database until another database is selected.

### Syntax

```sql
USE database_name;
```

### Example

```sql
USE HospitalDB;
```

This command tells MySQL to use **HospitalDB** for all subsequent SQL statements.

### 🌍 Real-world Example

Imagine a company has multiple databases:

- HospitalDB
- SchoolDB
- BankingDB

Before creating tables or inserting data, you must tell MySQL which database you want to work with. The `USE` statement selects that database.

## 📌 CREATE TABLE

The `CREATE TABLE` statement is used to create a new table inside a database. A table defines how data will be organized by specifying the column names, data types, and constraints.

### Syntax

```sql
CREATE TABLE table_name (
    column_name data_type,
    column_name data_type
);
```

### Example

```sql
CREATE TABLE Patients (
    PatientID INT,
    Name VARCHAR(100),
    Age INT,
    City VARCHAR(50)
);
```

This creates a table named **Patients** with four columns.

### 🌍 Real-world Example

Suppose a hospital wants to store patient records.

Before adding patient information, the hospital must decide **what information needs to be stored**, such as:

- Patient ID
- Name
- Age
- City

The `CREATE TABLE` statement defines this structure so that every patient record follows the same format.

## 📌 Data Types

A data type defines the kind of data that can be stored in a column. Choosing the correct data type helps MySQL store data efficiently, validate input, and perform operations correctly.

### Common Data Types

| Data Type | Description | Example |
|-----------|-------------|---------|
| `INT` | Stores whole numbers | 25 |
| `VARCHAR(n)` | Stores text with a maximum length | "Mitali" |
| `DECIMAL(p,s)` | Stores decimal numbers | 45000.75 |
| `DATE` | Stores dates | 2026-07-30 |

### Why Are Data Types Important?

- They ensure only valid data is stored.
- They improve storage efficiency.
- They make searching, filtering, and calculations more accurate.
- They help maintain data consistency.
## 📌 PRIMARY KEY

A **PRIMARY KEY** is a column (or a combination of columns) that uniquely identifies each row in a table.

Every table should have a primary key so that each record can be identified without confusion.

### Rules of a Primary Key

- Each value must be **unique**.
- A primary key **cannot contain NULL values**.
- A table can have only **one primary key**.

### Example

```sql
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT
);
```

In this table, **PatientID** is the primary key, ensuring that every patient has a unique ID.

### 🌍 Real-world Example

Think of your **Aadhaar Number**, **Passport Number**, or **Student Roll Number**.

Although many people may have the same name, each person has a unique identification number. Similarly, a primary key uniquely identifies each record in a database table.
## 📌 AUTO_INCREMENT

The `AUTO_INCREMENT` attribute is used to automatically generate a unique value for a column, usually the primary key.

Whenever a new record is inserted, MySQL automatically assigns the next available number to the `AUTO_INCREMENT` column.

### Example

```
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    City VARCHAR(50)
);
```

When records are inserted:

| PatientID | Name | Age |
|-----------|------|-----|
| 1 | Rahul | 25 |
| 2 | Priya | 30 |
| 3 | Amit | 28 |

Notice that the `PatientID` values are generated automatically.

### 🌍 Why Use AUTO_INCREMENT?

- Eliminates the need to enter IDs manually.
- Prevents duplicate IDs caused by human error.
- Automatically generates the next available unique value.
- Makes data entry faster and more reliable.

## 🔑 Key Takeaways

- A database is created using the `CREATE DATABASE` statement.
- The `USE` statement selects the database for the current session.
- A table organizes data into rows and columns.
- Data types define the kind of data that can be stored in each column.
- A `PRIMARY KEY` uniquely identifies every record in a table and cannot contain duplicate or NULL values.
- The `AUTO_INCREMENT` attribute automatically generates unique IDs for new records.
## 🏋️ Practice Questions

### Conceptual Questions

1. What is the purpose of the `CREATE DATABASE` statement?
2. Why do we use the `USE` statement?
3. What is the difference between a database and a table?
4. Why are data types important in a table?
5. What are the two main rules of a PRIMARY KEY?
6. Why is `AUTO_INCREMENT` commonly used with a PRIMARY KEY?

### Practical Questions

1. Create a database named `SchoolDB`.
2. Select the `SchoolDB` database.
3. Create a table named `Students` with the following columns:
   - `StudentID` (Primary Key, Auto Increment)
   - `Name` (Maximum 100 characters)
   - `Age` (Whole number)
   - `Course` (Maximum 50 characters)
4. Which data type would you use for:
   - A person's age
   - A student's name
   - A joining date
   - A product price


## 💭 Reflection

Today, I learned how to create databases and tables in MySQL. I also understood how data types define the kind of data stored in each column, why every table should have a primary key, and how `AUTO_INCREMENT` simplifies the process of generating unique IDs.

These concepts provide the foundation for storing structured data, which will help me perform CRUD operations in the next lesson.
