--Return one value
USE [SchoolManagement_DB]

--SELECT GETDATE()[Date], MONTH(GETDATE())[Month], YEAR(GETDATE())[Year]


--Calling Custom Scalar Function
--SELECT [dbo].[fnc_GetHighestGrade]() AS [Highest Grade]

--SELECT [dbo].[fnc_GetStudentHigestGrade](3) AS [Student Highest Grade]

--Inline Valued Function
--SELECT * FROM [dbo].[fnc_GetGradeRange](30,90);

--Multi Statement Table Valued Function
SELECT * FROM [dbo].[fnc_GetAllSchoolPersons]();