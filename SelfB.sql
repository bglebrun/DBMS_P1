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

-- Order Application category by average Price
SELECT Category, AVG(Price) FROM dbo.Application
GROUP BY Category
ORDER BY AVG(Price)