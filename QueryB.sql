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

SELECT Name, Email FROM dbo.Application 
INNER JOIN dbo.Developer ON dbo.Application.DeveloperSSN=dbo.Developer.SSN 
INNER JOIN dbo.Review ON dbo.Review.AppID=dbo.Application.AppID 
WHERE dbo.Review.Rating = 5