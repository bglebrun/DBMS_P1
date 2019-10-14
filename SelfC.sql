USE [DBMS_P1]
GO

SELECT [AppID]
      ,[Name]
      ,[Platform]
      ,[OSVersion]
      ,[AppVersion]
      ,[Category]
      ,[Description]
      ,[Price]
      ,[DeveloperSSN]
  FROM [dbo].[Application]
GO


-- Find the average balance of developers based on app platform
SELECT Platform, AVG(Balance) FROM dbo.Application
INNER JOIN dbo.Developer ON dbo.application.DeveloperSSN=dbo.Developer.SSN
GROUP BY Platform
ORDER BY AVG(Balance)