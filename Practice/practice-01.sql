/*
===========================================
SQL Practice 01
===========================================

Topics Covered
--------------
✔ CREATE DATABASE
✔ CREATE TABLE
✔ Constraints
✔ INSERT
✔ SELECT
✔ WHERE
✔ ORDER BY
✔ Aggregate Functions
✔ GROUP BY
✔ HAVING
✔ UPDATE
✔ DELETE

===========================================
*/

CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    Age INT CHECK (Age >= 18),
    City VARCHAR(50) DEFAULT 'Mumbai',
    Email VARCHAR(100) UNIQUE
);

INSERT INTO Employees
(Name, Department, Salary, Age, City, Email)
VALUES
('Rahul','HR',40000,21,'Mumbai','rahul@gmail.com'),
('Uday','HR',45000,25,'Pune','uday23@gmail.com'),
('Snehal','IT',90000,23,'Amravti','snehal111@gmail.com'),
('Rohit','Manager',70000,30,'Indore','rohit@gmail.com'),
('Yash','Analyst',28000,28,'Pune','jfhgfyash@gmail.com'),
('Aryan','Sales',30000,23,'Pune','boxA@gmail.com'),
('Kushal','Manager',60000,33,'Thane','kw42ec@gmail.com'),
('Amit','IT',85000,25,'Panvel','amit_6r87936@gmail.com'),
('Riya','Sales',25000,25,'Mumbai','riya3565@gmail.com'),
('Mohini','IT',70000,24,'Chembur','mohini4567@gmail.com');

SELECT * FROM Employees;

SELECT Name, Salary FROM Employees;

SELECT distinct Department FROM Employees;

SELECT * FROM Employees 
WHERE Salary>50000;

SELECT * FROM Employees 
WHERE Age BETWEEN 25 AND 35;

SELECT * FROM Employees
WHERE City='Mumbai';

SELECT * FROM Employees
WHERE City='Mumbai' AND Salary>60000;

SELECT * FROM Employees
WHERE City='Delhi' OR City='Bangalore';

SELECT * FROM Employees
WHERE Name LIKE'A%';

SELECT * FROM Employees
WHERE Name LIKE'%n';

SELECT * FROM Employees
WHERE Name LIKE'%ra%';

SELECT * FROM Employees
order by Salary Desc;

SELECT * FROM Employees
order by Age;

SELECT * FROM Employees
LIMIT 5;

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 1;

SELECT Count(*) FROM Employees;


SELECT AVG(Salary) From Employees;

SELECT  MAX(Salary) FROM Employees;

SELECT  MIN(Salary) FROM Employees;

SELECT  SUM(Salary) FROM Employees;

SELECT Department, count(*) 
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) 
FROM Employees
GROUP BY Department;

SELECT Department, MAX(Salary) 
FROM Employees
GROUP BY Department;


SELECT Department, AVG(Salary) 
FROM Employees
GROUP BY Department
HAVING AVG(Salary)>60000;

SELECT City, COUNT(*)
FROM Employees
GROUP BY City
HAVING COUNT(*)>2;

UPDATE Employees
SET Salary=Salary+5000
WHERE EmployeeID=1;

UPDATE Employees
SET Department='HR'
WHERE EmployeeID=8;

UPDATE Employees
SET City='Pune'
WHERE City='Mumbai';

delete from Employees
where Age>60;

DELETE FROM Employees
WHERE Department = 'Sales';

INSERT INTO Employees
(Name, Department, Salary, Age, City, Email)
VALUES
('Ken','HR',4000,29,'Surat','rahul@gmail.com');

INSERT INTO Employees
(Name, Department, Salary, Age, City, Email)
VALUES
(NULL,'HR',4000,29,'Surat','kdf@gmail.com');

INSERT INTO Employees
(Name, Department, Salary, Age, City, Email)
VALUES
('Rudra','HR',-5000,29,'Mangaon','ru@gmail.com');
