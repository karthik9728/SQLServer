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

SELECT s.StudentId,s.FirstName +' '+ s.LastName [Student Name],COUNT(e.StudentId) [Number of Classes] FROM Enrollments e
INNER JOIN Students s ON s.Id = e.StudentId
GROUP BY s.StudentId,s.FirstName,s.LastName;