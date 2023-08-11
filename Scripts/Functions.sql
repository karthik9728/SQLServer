--Return one value

SELECT GETDATE()[Date], MONTH(GETDATE())[Month], YEAR(GETDATE())[Year]


--Calling Custom Scalar Function
SELECT [dbo].[fnc_GetHighestGrade]() AS [Highest Grade]

SELECT [dbo].[fnc_GetStudentHigestGrade](3) AS [Student Highest Grade]