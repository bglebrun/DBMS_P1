CREATE TABLE [dbo].[Developer]
(
	[SSN] VARCHAR(9) NOT NULL PRIMARY KEY, 
    [Fname] NVARCHAR(20) NOT NULL, 
    [MINIT] CHAR(1) NULL, 
    [Lname] NVARCHAR(20) NOT NULL, 
    [DOB] DATETIME NOT NULL, 
    [SEX] CHAR NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Phone] VARCHAR(10) NULL, 
    [Balance] MONEY NOT NULL , 
    [AccountNum] VARCHAR(17) NOT NULL, 
    [RoutingNum] VARCHAR(9) NOT NULL,
	CONSTRAINT chk_dev_sex CHECK( SEX IN('M', 'F')),
	CONSTRAINT chk_dev_phone CHECK( Phone not like '%[^0-9]%'),
	CONSTRAINT chk_dev_acct CHECK( AccountNum not like '%[^0-9]%'),
	CONSTRAINT chk_dev_routing CHECK( RoutingNum not like '%[^0-9]%'), 
    CONSTRAINT [CK_Developer_SSN] CHECK ( SSN not like '%[^0-9]%') 
)
