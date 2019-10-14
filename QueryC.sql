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


SELECT Name FROM dbo.Application
WHERE AppID IN
(SELECT AppID
FROM Review
GROUP BY AppID
HAVING AVG(Rating) >= 4)