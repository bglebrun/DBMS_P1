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


SELECT [Fname], [Lname] FROM Developer
WHERE [SSN] IN (
SELECT [DeveloperSSN] FROM Application
WHERE [Price] = 0
GROUP BY [DeveloperSSN], [PRICE]
Having COUNT(*) > 1 )