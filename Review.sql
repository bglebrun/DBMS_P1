CREATE TABLE [dbo].[Review]
(
	[ReviewID] INT NOT NULL PRIMARY KEY, 
    [Details] NVARCHAR(300) NULL, 
    [Rating] CHAR NULL,
	[ReviewerID] INT NOT NULL, 
    [AppID] INT NOT NULL, 
    CONSTRAINT chk_rating CHECK( Rating IN ('1', '2', '3', '4', '5')), 
    CONSTRAINT [FK_Review_ToUser] FOREIGN KEY ([ReviewerID]) REFERENCES [User]([UID]), 
    CONSTRAINT [FK_Review_ToApplication] FOREIGN KEY ([AppID]) REFERENCES [Application]([AppID])
)
