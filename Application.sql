CREATE TABLE [dbo].[Application]
(
	[AppID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [Name] NVARCHAR(50) NULL, 
    [Platform] NVARCHAR(10) NOT NULL, 
    [OSVersion] NVARCHAR(15) NOT NULL, 
    [AppVersion] FLOAT NOT NULL, 
    [Category] NVARCHAR(20) NOT NULL, 
    [Description] NVARCHAR(1000) NULL, 
    [Price] MONEY NOT NULL, 
    [DeveloperSSN] INT NOT NULL, 
    CONSTRAINT [FK_Application_ToDeveloper] FOREIGN KEY ([DeveloperSSN]) REFERENCES [Developer]([SSN])
)
