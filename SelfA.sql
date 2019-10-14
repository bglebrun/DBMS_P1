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

-- Finds the current balance of developers who have made transactions averaging  less than 3 dollars
SELECT Balance FROM dbo.Developer
WHERE SSN IN
(SELECT DeveloperSSN FROM dbo.Application
WHERE AppID IN
(SELECT AppID FROM dbo.Downloads
GROUP BY AppID
HAVING AVG(Amount) < 3
)
)