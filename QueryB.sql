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

SELECT Name, Email FROM dbo.Application, dbo.Review, dbo.Developer WHERE dbo.Review.Rating = '5'