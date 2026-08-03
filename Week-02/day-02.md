# Day 9 - Primary Key & Foreign Key

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Understand the purpose of Primary Keys.
- Explain the role of Foreign Keys.
- Differentiate between Primary Key and Foreign Key.
- Understand Parent and Child Tables.
- Explain Referential Integrity.
- Create relationships between tables using Foreign Keys.
- Understand `ON DELETE CASCADE`, `ON DELETE SET NULL`, `RESTRICT`, and `ON UPDATE CASCADE`.

---

# 📖 Introduction

In a relational database, information is often divided into multiple tables instead of storing everything in one table. To connect these tables, SQL uses **Primary Keys** and **Foreign Keys**.

These keys help establish relationships between tables while ensuring the data remains accurate and consistent.

---

# 📌 Primary Key

A **Primary Key** is a column (or combination of columns) that uniquely identifies each row in a table.

Every table should have a Primary Key so that each record can be identified without ambiguity.

## Rules of a Primary Key

- Must contain unique values.
- Cannot contain `NULL` values.
- A table can have only one Primary Key.

## Syntax

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
```

### Example

| StudentID | Name |
|-----------|------|
| 1 | Rahul |
| 2 | Priya |
| 3 | Rahul |

Although two students have the same name, their **StudentID** values are different, allowing each record to be uniquely identified.

### 🌍 Real-world Example

Examples of Primary Keys include:

- Aadhaar Number
- Passport Number
- Employee ID
- Student Roll Number

These identifiers uniquely identify an individual.

---

# 📌 Foreign Key

A **Foreign Key** is a column in one table that references the Primary Key of another table.

It is used to establish relationships between tables and maintain data consistency.

## Syntax

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseName VARCHAR(100),
    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID)
);
```

In this example:

- `StudentID` is the Primary Key in the **Students** table.
- `StudentID` is the Foreign Key in the **Courses** table.

---

# 📌 Parent Table and Child Table

The table containing the Primary Key is called the **Parent Table**.

The table containing the Foreign Key is called the **Child Table**.

### Example

### Students (Parent Table)

| StudentID | Name |
|-----------|------|
| 1 | Rahul |
| 2 | Priya |

### Courses (Child Table)

| CourseID | StudentID | CourseName |
|----------|-----------|------------|
| 1 | 1 | Java |
| 2 | 1 | SQL |
| 3 | 2 | Python |

The `StudentID` column in the **Courses** table refers to the `StudentID` column in the **Students** table.

---

# 📌 Referential Integrity

**Referential Integrity** ensures that every Foreign Key value references an existing Primary Key value.

This prevents invalid or orphaned records from being stored.

### Example

Suppose the Students table contains:

| StudentID | Name |
|-----------|------|
| 1 | Rahul |
| 2 | Priya |

Now execute:

```sql
INSERT INTO Courses (StudentID, CourseName)
VALUES (5, 'Java');
```

Since **StudentID = 5** does not exist in the Students table, MySQL rejects the query.

This ensures that every course belongs to a valid student.

---

# 📌 One-to-Many Relationship

A Foreign Key can contain duplicate values because one record in the Parent Table can be related to multiple records in the Child Table.

### Example

| StudentID | Course |
|-----------|--------|
| 1 | Java |
| 1 | SQL |
| 1 | MySQL |

Here, one student is enrolled in multiple courses.

This is called a **One-to-Many Relationship**.

---

# 📌 ON DELETE RESTRICT

`RESTRICT` prevents a parent record from being deleted if related child records exist.

### Example

```sql
DELETE FROM Students
WHERE StudentID = 1;
```

If the student has enrolled courses, the deletion is rejected.

---

# 📌 ON DELETE CASCADE

`ON DELETE CASCADE` automatically deletes related child records when the parent record is deleted.

### Syntax

```sql
FOREIGN KEY (StudentID)
REFERENCES Students(StudentID)
ON DELETE CASCADE;
```

### Example

Deleting a student automatically removes all of that student's course records.

---

# 📌 ON DELETE SET NULL

`ON DELETE SET NULL` keeps the child record but sets the Foreign Key value to `NULL` when the parent record is deleted.

### Syntax

```sql
FOREIGN KEY (ManagerID)
REFERENCES Managers(ManagerID)
ON DELETE SET NULL;
```

### Example

If a manager leaves the company, employees remain in the database, but their `ManagerID` becomes `NULL`.

---

# 📌 ON UPDATE CASCADE

`ON UPDATE CASCADE` automatically updates Foreign Key values whenever the referenced Primary Key changes.

### Syntax

```sql
FOREIGN KEY (StudentID)
REFERENCES Students(StudentID)
ON UPDATE CASCADE;
```

Although Primary Keys are rarely updated, this option keeps related tables synchronized when they are.

---

# 📊 Primary Key vs Foreign Key

| Primary Key | Foreign Key |
|--------------|-------------|
| Uniquely identifies each record. | References the Primary Key of another table. |
| Must be unique. | Can contain duplicate values. |
| Cannot contain NULL values. | Can contain NULL values (unless restricted). |
| One Primary Key per table. | A table can have multiple Foreign Keys. |
| Identifies records. | Creates relationships between tables. |

---

# 🔑 Key Takeaways

- A Primary Key uniquely identifies each row in a table.
- A Foreign Key creates relationships between tables.
- The Parent Table contains the Primary Key.
- The Child Table contains the Foreign Key.
- Referential Integrity prevents invalid relationships.
- A Foreign Key can contain duplicate values.
- `ON DELETE CASCADE` automatically deletes related child records.
- `ON DELETE SET NULL` removes the relationship but preserves the child record.
- `ON UPDATE CASCADE` updates Foreign Keys when the referenced Primary Key changes.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is a Primary Key?
2. Why do we need a Primary Key?
3. What is a Foreign Key?
4. What is the difference between a Primary Key and a Foreign Key?
5. What is a Parent Table?
6. What is a Child Table?
7. What is Referential Integrity?
8. Why can a Foreign Key contain duplicate values?
9. What is a One-to-Many Relationship?
10. What is the purpose of `ON DELETE CASCADE`?

---

## Practical Questions

### 1. Create a `Students` table with:

- StudentID as Primary Key with AUTO_INCREMENT
- Name (NOT NULL)
- Email (UNIQUE)

### 2. Create a `Courses` table where:

- CourseID is the Primary Key.
- StudentID is a Foreign Key referencing `Students(StudentID)`.
- CourseName stores the course name.

### 3. Insert two students and three course records.

### 4. Try inserting a course with a StudentID that does not exist.

What happens?

### 5. Explain why a student can appear multiple times in the Courses table.

---

# 💭 Reflection

Today, I learned how relational databases connect multiple tables using Primary Keys and Foreign Keys. I understood the concepts of Parent and Child Tables, Referential Integrity, and how cascading actions such as `ON DELETE CASCADE`, `ON DELETE SET NULL`, and `ON UPDATE CASCADE` help maintain consistent relationships between related data.

---

# ⏭️ What's Next?

In **Day 10**, I will learn about **SQL JOINs**, understand why joins are needed, explore different types of relationships, and use **INNER JOIN** to retrieve related data from multiple tables.
