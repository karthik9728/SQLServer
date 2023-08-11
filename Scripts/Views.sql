USE [SchoolManagement_DB]

GO
CREATE VIEW vw_StudentEnrollmentDetails  AS
SELECT 
s.StudentId,
s.FirstName +' '+ s.LastName [Student Name],
AVG(Grade)[AVG Grade],
MAX(Grade)[Lowest Grade],
COUNT(Grade) [No Of Classes] 
FROM Enrollments e
INNER JOIN Students s ON s.Id = e.StudentId
GROUP BY s.StudentId,s.FirstName,s.LastName;