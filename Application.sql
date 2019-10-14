CREATE TABLE [dbo].[Application]
(
	[AppID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [Name] NVARCHAR(300) NULL, 
    [Platform] NVARCHAR(300) NOT NULL, 
    [OSVersion] FLOAT NOT NULL, 
    [AppVersion] FLOAT NOT NULL, 
    [Category] NVARCHAR(300) NOT NULL, 
    [Description] NVARCHAR(1000) NULL, 
    [Price] MONEY NOT NULL, 
    [DeveloperSSN] VARCHAR(9) NOT NULL, 
    CONSTRAINT [FK_Application_ToDeveloper] FOREIGN KEY ([DeveloperSSN]) REFERENCES [Developer]([SSN])
)
