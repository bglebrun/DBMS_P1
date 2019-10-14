USE [DBMS_P1]
GO

SELECT [UID]
      ,[Fname]
      ,[MINIT]
      ,[Lname]
      ,[DOB]
      ,[SEX]
      ,[Email]
      ,[Phone]
  FROM [dbo].[User]
GO


SELECT Fname, Lname FROM dbo.[User] WHERE MINIT = 'P'