USE [DBMS_P1]
GO

SELECT [SSN]
      ,[Fname]
      ,[MINIT]
      ,[Lname]
      ,[DOB]
      ,[SEX]
      ,[Email]
      ,[Phone]
      ,[Balance]
      ,[AccountNum]
      ,[RoutingNum]
  FROM [dbo].[Developer]
GO


SELECT Fname, Lname FROM dbo.[Developer] WHERE Balance > 10