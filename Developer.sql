CREATE TABLE [dbo].[Developer]
(
	[SSN] INT NOT NULL PRIMARY KEY, 
    [Fname] NVARCHAR(15) NOT NULL, 
    [MINIT] CHAR(1) NULL, 
    [Lname] NVARCHAR(15) NOT NULL, 
    [DOB] DATETIME NOT NULL, 
    [SEX] CHAR NULL , 
    [Email] NVARCHAR(50) NOT NULL, 
    [Phone] INT NULL, 
    [Balance] MONEY NOT NULL DEFAULT 0.00, 
    [AccountNum] INT NOT NULL, 
    [RoutingNum] INT NOT NULL,
	CONSTRAINT chk_dev_sex CHECK( SEX IN('M', 'F')),
	CONSTRAINT chk_dev_phone CHECK( Phone between 11111111111 and 99999999999),
	CONSTRAINT chk_dev_acct CHECK( AccountNum between 1 and 99999999999999999),
	CONSTRAINT chk_dev_routing CHECK( RoutingNum between 111111111 and 999999999), 
    CONSTRAINT [CK_Developer_SSN] CHECK ( SSN between 001111111 and 730999999) 
)
