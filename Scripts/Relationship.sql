--Normalization & Relationship

USE [SchoolManagement_DB];

--CREATE TABLE ProgrammesOfStudy
--(
--Id INT PRIMARY KEY IDENTITY,
--Name NVARCHAR(150),
--DurationInYears DECIMAL(10,2)
--);

--CREATE TABLE Classes
--(
--Id INT PRIMARY KEY IDENTITY,
--LecturerId INT FOREIGN KEY REFERENCES Lecturers(Id),
--CourseId INT FOREIGN KEY REFERENCES Courses(Id),
--[Time] TIME,
--);

--CREATE TABLE Enrollments
--(
--Id INT PRIMARY KEY IDENTITY,
--StudentId INT FOREIGN KEY REFERENCES Students(Id),
--ClassId INT FOREIGN KEY REFERENCES Classes(Id),
--Grade NVARCHAR(2)
--);

--INSERT INTO ProgrammesOfStudy VALUES
--('Asc. in Teaching',2),
--('Asc. in Gradening',2),
--('Asc. in Finance',2);

--INSERT INTO Students (FirstName,LastName,DateOfBirth,StudentId,ProgrammeOfStudyId)
--VALUES
--('Peter','Johnson','1991-08-09','1478523690',1),
--('Peter','Pan','1991-08-09','1478523630',2),
--('Jhon','Paul','1991-08-09','1478523610',3),
--('Matthew','Swanson','1991-08-09','1478523620',3);

--SELECT * FROM Students;

--SELECT * FROM Lecturers;
--SELECT * FROM Courses;
--INSERT INTO Classes 
--VALUES
--(4,1,'12:30'),
--(5,6,'13:00'),
--(4,1,'10:00'),
--(5,1,'08:00'),
--(5,2,'15:00');

--SELECT * FROM Classes;
--SELECT * FROM Students;

--INSERT INTO Enrollments
--VALUES 
--(1,1,NULL),
--(1,2,NULL),
--(3,4,NULL),
--(4,2,NULL);

--SELECT * FROM Enrollments;

--SELECT * FROM Students;
--SELECT * FROM ProgrammesOfStudy;

--Inner Join
--SELECT * FROM Students
--INNER JOIN ProgrammesOfStudy ON Students.ProgrammeOfStudyId = ProgrammesOfStudy.Id;

--SELECT 
--Students.StudentId [Student Id],
--Students.FirstName [First Name],
--Students.LastName [Last Name],
--ProgrammesOfStudy.Name [Programmes Of Study],
--ProgrammesOfStudy.DurationInYears [Estimated Duration In Years] FROM Students
--INNER JOIN ProgrammesOfStudy ON Students.ProgrammeOfStudyId = ProgrammesOfStudy.Id;

--SELECT * FROM Classes;

--SELECT * FROM Classes
--INNER JOIN Lecturers ON Classes.LecturerId = Lecturers.Id
--INNER JOIN Courses ON Classes.CourseId = Courses.Id;

--SELECT * FROM Classes c
--INNER JOIN Lecturers l ON c.LecturerId = l.Id
--INNER JOIN Courses co ON c.CourseId = co.Id;

--SELECT 
--Courses.Code,
--Courses.Name [Course Name],
--Lecturers.FirstName + ' ' + Lecturers.LastName [Lecturer Name],
--Time
--FROM Classes
--INNER JOIN Lecturers ON Classes.LecturerId = Lecturers.Id
--INNER JOIN Courses ON Classes.CourseId = Courses.Id;

--SELECT * FROM Classes
--INNER JOIN Lecturers ON Classes.LecturerId = Lecturers.Id WHERE Lecturers.StaffId IS NULL;

--SELECT * FROM Classes
--INNER JOIN Lecturers ON Classes.LecturerId = Lecturers.Id WHERE Lecturers.StaffId IS NOT NULL;