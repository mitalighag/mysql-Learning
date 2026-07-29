# Day 5 - Updating, Deleting, and Sorting Data

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Update existing records using the `UPDATE` statement.
- Modify column values using the `SET` clause.
- Delete records using the `DELETE` statement.
- Sort query results using the `ORDER BY` clause.
- Arrange records in ascending and descending order.
- Understand the importance of using the `WHERE` clause.

---

# 📖 Introduction

After inserting data into a database, there may be situations where information needs to be corrected, updated, or removed. SQL provides the `UPDATE` and `DELETE` statements for these tasks.

In addition, SQL allows us to sort query results using the `ORDER BY` clause, making it easier to analyze and understand data.

---

# 📌 UPDATE

The `UPDATE` statement is used to modify existing records in a table.

## Syntax

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

## Example

```sql
UPDATE Patients
SET City = 'Delhi'
WHERE PatientID = 1;
```

This query updates the city of the patient whose `PatientID` is 1.

### 🌍 Real-world Example

If a patient changes their address, the hospital updates the existing record instead of creating a new one.

---

# 📌 SET Clause

The `SET` clause specifies the column(s) and new value(s) to be updated.

## Example

```sql
UPDATE Patients
SET Age = 28,
    City = 'Pune'
WHERE PatientID = 2;
```

This query updates both the age and city of the selected patient.

### Why Use SET?

The `SET` clause allows one or multiple columns to be modified in a single query.

---

# 📌 DELETE

The `DELETE` statement removes one or more records from a table.

## Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

## Example

```sql
DELETE FROM Patients
WHERE PatientID = 5;
```

This query removes the patient whose ID is 5.

### 🌍 Real-world Example

If a patient record was created by mistake, it can be permanently removed using the `DELETE` statement.

---

# 📌 ORDER BY

The `ORDER BY` clause is used to sort records in ascending or descending order.

## Syntax

```sql
SELECT *
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

The `ASC` keyword sorts records from the smallest value to the largest value. It is the default sorting order.

## Example

```sql
SELECT *
FROM Patients
ORDER BY Age ASC;
```

---

# 📌 DESC (Descending Order)

The `DESC` keyword sorts records from the largest value to the smallest value.

## Example

```sql
SELECT *
FROM Patients
ORDER BY Age DESC;
```

### 🌍 Real-world Example

A company wants to display employees with the highest salaries first.

---

# 📌 Importance of WHERE

The `WHERE` clause specifies which record(s) should be updated or deleted.

### Example

```sql
UPDATE Patients
SET City = 'Mumbai'
WHERE PatientID = 3;
```

Only one record is updated.

Similarly,

```sql
DELETE FROM Patients
WHERE PatientID = 3;
```

Only one record is deleted.

Without the `WHERE` clause, every record in the table would be affected.

---

# ⚠️ Common Mistakes

### ❌ Updating Every Record

```sql
UPDATE Patients
SET City = 'Delhi';
```

This updates every patient's city.

### ✅ Correct

```sql
UPDATE Patients
SET City = 'Delhi'
WHERE PatientID = 1;
```

---

### ❌ Deleting Every Record

```sql
DELETE FROM Patients;
```

This removes all records from the table.

### ✅ Correct

```sql
DELETE FROM Patients
WHERE PatientID = 4;
```

Always use the `WHERE` clause unless you intentionally want to modify every record.

---

# 🔑 Key Takeaways

- `UPDATE` modifies existing records.
- `SET` specifies the new values.
- `DELETE` removes records from a table.
- `ORDER BY` sorts query results.
- `ASC` sorts data in ascending order.
- `DESC` sorts data in descending order.
- The `WHERE` clause prevents accidental updates or deletions of all records.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is the purpose of the `UPDATE` statement?
2. Why is the `SET` clause used?
3. What is the purpose of the `DELETE` statement?
4. What is the difference between `ASC` and `DESC`?
5. Why is the `WHERE` clause important?

## Practical Questions

### 1. Update the city of the patient with `PatientID = 2` to `Mumbai`.

### 2. Update both the age and city of a patient.

### 3. Delete the patient whose `PatientID = 5`.

### 4. Display all patients sorted by age in ascending order.

### 5. Display all patients sorted by age in descending order.

---

# 💭 Reflection

Today, I learned how to update and delete records in a database using SQL. I also learned how to organize query results using the `ORDER BY` clause. Most importantly, I understood why the `WHERE` clause is essential for preventing accidental modifications to every record in a table.
