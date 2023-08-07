--Command to use Matser Database
--use master;

--Command to Create Database
--CREATE DATABASE SchoolManagement_DbV1;

--Command to Delete Database
--DROP DATABASE SchoolManagement_DbV1;

--Command to Change Database Name
--ALTER DATABASE SchoolManagement_Db MODIFY NAME = SchoolManagement_DB;

USE [SchoolManagement_Db];

--Creating Table
--CREATE TABLE Lecturers (
--	Id INT PRIMARY KEY IDENTITY,
--	FirstName NVARCHAR(50) NOT NULL,
--	LastName NVARCHAR(50) NOT NULL,
--	DateOfBirth DATE,
--	StaffId NVARCHAR(10) NOT NULL UNIQUE
--);

--Delete Table from database
--DROP TABLE Lecturers;

--CREATE TABLE Courses (
--	Id INT PRIMARY KEY IDENTITY,
--	Name NVARCHAR(50) NOT NULL,
--	Code NVARCHAR(5) UNIQUE,
--	Credits INT,
--);

--Insert values in table

--INSERT INTO Courses(Name,Code,Credits) 
--VALUES 
--('Database Developement ','DB101',3),
--('C++ Developement','CP101',3);

--SELECT * FROM Courses;

--INSERT INTO Lecturers VALUES ('KARTHIK','P','1997-07-28',NULL);
--INSERT INTO Lecturers VALUES ('SANJAY','N','2004-04-02','1011209435'); 
--INSERT INTO Lecturers VALUES ('SWETHA','N','2006-04-02','1478523679');

--SELECT FIRSTNAME,LASTNAME FROM Lecturers;

--SELECT * FROM Lecturers;

--SELECT * FROM [SchoolManagement_DB].[dbo].[Lecturers];

--Query with Filters

--SELECT * FROM Lecturers WHERE Id = 2;

--SELECT * FROM Lecturers WHERE StaffId = '1011209435';

--SELECT * FROM Lecturers WHERE FirstName = 'Karthik' AND LastName = 'P';

--SELECT * FROM Lecturers WHERE FirstName = 'P' OR LastName = 'P';

--using wildcard to spify what string must start with 
--SELECT * FROM Lecturers  WHERE FirstName LIKE 'S%';

--using wildcard to spify what string must ends with 
--SELECT * FROM Lecturers  WHERE FirstName LIKE '%K';

--using wildcard to spify what string must contains with 
--SELECT * FROM Lecturers  WHERE FirstName LIKE '%A%';

--using Math Comparsions
--SELECT * FROM Courses WHERE Credits >= 3;

--Filter Record with null value based on column name
--SELECT * FROM Lecturers WHERE StaffId IS NULL;

--Show something on NULL value columns

--SELECT Id,
--	FirstName [First Name],
--	LastName [Last Name],
--	DateOfBirth [Date of Birth],
--	CASE 
--	WHEN StaffId Is NULL THEN 'Not Onboarded' 
--	ELSE StaffId 
--	END [Staff Id]
--	FROM Lecturers;

--UPDATE Lecturers SET LastName = 'P';

--UPDATE Lecturers SET LastName = 'N' Where Id != 1;

--UPDATE Lecturers SET DateOfBirth = '1997-07-28' WHERE DateOfBirth IS NULL;

--Delete Record from Database

--DELETE FROM Lecturers WHERE Id = 3;

--DELETE FROM Lecturers WHERE StaffId IS NULL;

--DELETE FROM Lecturers;

SELECT * FROM Lecturers;