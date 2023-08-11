USE [SchoolManagement_DB]

DECLARE @StudentId INT;

EXEC [dbo].[spins_AddStudent] 
'1278321621','Jarvis','Powell', NULL,@StudentId OUTPUT;

EXEC [dbo].[sp_SelectAllStudentById] @StudentId;