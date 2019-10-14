CREATE TABLE [dbo].[Review]
(
	[ReviewID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [Details] NVARCHAR(1000) NULL, 
    [Rating] INT NULL,
	[ReviewerID] INT NOT NULL, 
    [AppID] INT NOT NULL, 
    [Comment] NVARCHAR(1000) NULL, 
    CONSTRAINT chk_rating CHECK( Rating BETWEEN 1 and 5), 
    CONSTRAINT [FK_Review_ToUser] FOREIGN KEY ([ReviewerID]) REFERENCES [User]([UID]), 
    CONSTRAINT [FK_Review_ToApplication] FOREIGN KEY ([AppID]) REFERENCES [Application]([AppID])
)
