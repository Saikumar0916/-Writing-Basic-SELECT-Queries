-- Create Database (MySQL only)
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    City VARCHAR(30)
);

-- Insert Sample Data
INSERT INTO Employees VALUES
(1, 'Rahul', 'IT', 50000, 'Hyderabad'),
(2, 'Priya', 'HR', 45000, 'Chennai'),
(3, 'Arjun', 'IT', 60000, 'Bangalore'),
(4, 'Neha', 'Finance', 55000, 'Hyderabad'),
(5, 'Kiran', 'Marketing', 48000, 'Mumbai');

-- View Entire Table
SELECT * FROM Employees;

-- View Specific Columns
SELECT Name, Department, Salary
FROM Employees;

-- WHERE Clause
SELECT *
FROM Employees
WHERE Department = 'IT';

-- WHERE with AND
SELECT *
FROM Employees
WHERE Department = 'IT'
AND Salary > 50000;

-- WHERE with OR
SELECT *
FROM Employees
WHERE City = 'Hyderabad'
OR City = 'Chennai';

-- LIKE Operator
SELECT *
FROM Employees
WHERE Name LIKE 'R%';

-- BETWEEN Operator
SELECT *
FROM Employees
WHERE Salary BETWEEN 45000 AND 55000;

-- ORDER BY Ascending
SELECT *
FROM Employees
ORDER BY Salary ASC;

-- ORDER BY Descending
SELECT *
FROM Employees
ORDER BY Salary DESC;

-- LIMIT Clause
SELECT *
FROM Employees
LIMIT 3;

-- Combined Query
SELECT Name, Department, Salary
FROM Employees
WHERE Salary > 45000
ORDER BY Salary DESC
LIMIT 2;
    