-- ================================================
-- Template generated from Template Explorer using:
-- Create Multi-Statement Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION fnc_GetAllSchoolPersons
(
	-- Add the parameters for the function here
	
)
RETURNS 
@Persons TABLE 
(
	-- Add the column definitions for the TABLE variable here
	SchoolId NVARCHAR(10), 
	Name NVARCHAR(100), 
	DateOfBirth Date, 
	PersonType NVARCHAR(15)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	
	INSERT INTO @Persons 
	SELECT 
	StudentId,
	FirstName + ' ' + LastName,
	DateOfBirth,
	'Student'
	FROM Students 

	INSERT INTO @Persons 
	SELECT 
	StaffId,
	FirstName + ' ' + LastName,
	DateOfBirth,
	'Lecture'
	FROM Lecturers 

	RETURN 
END
GO