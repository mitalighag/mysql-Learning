# Day 5 - Updating and Deleting Data

## 🎯 Learning Objectives

By the end of this lesson, I will be able to:

- Update existing records using the `UPDATE` statement.
- Modify one or more column values using the `SET` clause.
- Delete records using the `DELETE` statement.
- Understand the importance of the `WHERE` clause.
- Avoid common mistakes while updating or deleting data.

---

# 📖 Introduction

After inserting data into a table, there may be situations where the information needs to be corrected, modified, or removed. SQL provides the `UPDATE` and `DELETE` statements to perform these operations safely and efficiently.

In this lesson, we will learn how to modify and delete records while understanding the importance of using conditions to prevent accidental changes.

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

This query changes the city of the patient whose `PatientID` is 1.

### 🌍 Real-world Example

If a patient moves to another city, the hospital updates the patient's address instead of creating a new record.

---

# 📌 SET Clause

The `SET` clause specifies the column(s) and new value(s) to be updated.

## Example

```sql
UPDATE Patients
SET Age = 26,
    City = 'Pune'
WHERE PatientID = 1;
```

This query updates both the age and city of the selected patient.

### Why Use SET?

The `SET` clause allows one or multiple columns to be updated in a single query.

---

# 📌 WHERE Clause in UPDATE

The `WHERE` clause specifies which record(s) should be updated.

## Example

```sql
UPDATE Patients
SET City = 'Mumbai'
WHERE Name = 'Rahul';
```

Without the `WHERE` clause, **every record** in the table would be updated.

---

# 📌 DELETE

The `DELETE` statement removes records from a table.

## Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

## Example

```sql
DELETE FROM Patients
WHERE PatientID = 3;
```

This query deletes the patient whose ID is 3.

### 🌍 Real-world Example

If a patient record is entered by mistake or needs to be removed permanently, the `DELETE` statement is used.

---

# 📌 Why WHERE is Important

The `WHERE` clause helps target specific records.

### Example

```sql
DELETE FROM Patients
WHERE PatientID = 5;
```

Only one record is deleted.

---

### Without WHERE

```sql
DELETE FROM Patients;
```

⚠️ This removes **all records** from the table.

Similarly,

```sql
UPDATE Patients
SET City = 'Delhi';
```

updates the city for **every patient**.

Always use the `WHERE` clause unless you intentionally want to affect all records.

---

# ⚠️ Common Mistakes

### ❌ Forgetting the WHERE Clause

```sql
UPDATE Patients
SET Age = 30;
```

This updates every patient's age.

---

### ✅ Correct

```sql
UPDATE Patients
SET Age = 30
WHERE PatientID = 2;
```

---

### ❌ Deleting Every Record

```sql
DELETE FROM Patients;
```

This removes all data from the table.

---

### ✅ Correct

```sql
DELETE FROM Patients
WHERE PatientID = 2;
```

---

# 🔑 Key Takeaways

- The `UPDATE` statement modifies existing records.
- The `SET` clause specifies the new values.
- The `DELETE` statement removes records from a table.
- The `WHERE` clause selects which records are affected.
- Omitting the `WHERE` clause may update or delete all records.

---

# 🏋️ Practice Questions

## Conceptual Questions

1. What is the purpose of the `UPDATE` statement?
2. Why do we use the `SET` clause?
3. What is the purpose of the `DELETE` statement?
4. Why is the `WHERE` clause important?
5. What happens if the `WHERE` clause is omitted?

## Practical Questions

### 1. Update the city of the patient with `PatientID = 1` to `Pune`.

### 2. Update the age of the patient named `Rahul` to `28`.

### 3. Delete the patient whose `PatientID = 4`.

### 4. Delete all patients who live in `Delhi`.

### 5. Update both the age and city of a patient in a single query.

---

# 💭 Reflection

Today, I learned how to modify and delete records using SQL. I also understood that the `WHERE` clause is essential because it prevents accidental updates or deletion of all records in a table. Using `UPDATE` and `DELETE` carefully helps maintain the accuracy and integrity of database information.
