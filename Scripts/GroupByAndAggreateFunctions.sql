USE [SchoolManagement_DB]

--Select Distinct 
--Group By
--SELECT * FROM Enrollments;

--SELECT DISTINCT e.StudentId,s.FirstName + ' ' + s.LastName [Student Name] FROM Enrollments e
--INNER JOIN Students s ON s.Id = e.StudentId;

--SELECT * FROM Classes;

--SELECT LecturerId,CourseId FROM Classes GROUP BY LecturerId, CourseId;

--SELECT CourseId,co.Code,co.Name FROM Classes c INNER JOIN Courses co ON co.Id = c.Id GROUP BY CourseId,co.Code,co.Name;

--SELECT COUNT(Id)[No of Students] FROM Students;

--SELECT s.StudentId,s.FirstName +' '+ s.LastName [Student Name],COUNT(e.StudentId) [Number of Classes] FROM Enrollments e
--INNER JOIN Students s ON s.Id = e.StudentId
--GROUP BY s.StudentId,s.FirstName,s.LastName;

--Average
--SELECT 
--s.StudentId,
--s.FirstName +' '+ s.LastName [Student Name],
--AVG(Grade)[AVG Grade],
--COUNT(Grade) [No Of Classes] 
--FROM Enrollments e
--INNER JOIN Students s ON s.Id = e.StudentId
--GROUP BY s.StudentId,s.FirstName,s.LastName;

----Min and Max
--SELECT 
--s.StudentId,
--s.FirstName +' '+ s.LastName [Student Name],
--AVG(Grade)[AVG Grade],
--MIN(Grade)[Lowest Grade],
--COUNT(Grade) [No Of Classes] 
--FROM Enrollments e
--INNER JOIN Students s ON s.Id = e.StudentId
--GROUP BY s.StudentId,s.FirstName,s.LastName;

--SELECT 
--s.StudentId,
--s.FirstName +' '+ s.LastName [Student Name],
--AVG(Grade)[AVG Grade],
--MAX(Grade)[Lowest Grade],
--COUNT(Grade) [No Of Classes] 
--FROM Enrollments e
--INNER JOIN Students s ON s.Id = e.StudentId
--GROUP BY s.StudentId,s.FirstName,s.LastName;

--Select MIN(Grade) from Enrollments WHERE ClassId = 1;

--SELECT 
--COUNT(Id) [How Many Students],
--AVG(Grade) [Average Class Grade],
--Min(Grade) [Lowest Class Grade],
--Max(Grade) [Higest Class Grade]
--FROM Enrollments WHERE ClassId = 1;