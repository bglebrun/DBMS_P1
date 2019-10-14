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


SELECT [DOB] FROM [User]
WHERE [UID] IN (
SELECT [UID] FROM [Downloads]
WHERE [AppID] IN (
SELECT [AppID] FROM [Application]
WHERE [Category] = 'Social'))