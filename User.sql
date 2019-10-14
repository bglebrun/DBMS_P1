CREATE TABLE [dbo].[User]
(
	[UID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [Fname] NVARCHAR(15) NOT NULL, 
    [MINIT] CHAR NULL, 
    [Lname] NVARCHAR(15) NOT NULL, 
    [DOB] DATETIME NOT NULL, 
    [SEX] CHAR NULL DEFAULT 'M', 
    [Email] NVARCHAR(50) NOT NULL, 
    [Phone] VARCHAR(10) NULL,
	CONSTRAINT chk_user_sex CHECK( SEX IN('M', 'F')),
	CONSTRAINT chk_user_phone CHECK (Phone not like '%[^0-9]%')
)
