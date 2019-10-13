﻿/*
Deployment script for DMBSP1

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DMBSP1"
:setvar DefaultFilePrefix "DMBSP1"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
PRINT N'Rename refactoring operation with key 9a5554ec-eb1d-4825-8d35-a1daf0b087a4 is skipped, element [dbo].[User].[Id] (SqlSimpleColumn) will not be renamed to UID';


GO
PRINT N'Rename refactoring operation with key 935a252e-fbbc-418c-8c47-02b0f1f830fa is skipped, element [dbo].[Review].[Id] (SqlSimpleColumn) will not be renamed to ReviewID';


GO
PRINT N'Rename refactoring operation with key bc8494c2-6937-47b7-8089-25565d1fd3ac is skipped, element [dbo].[Application].[Id] (SqlSimpleColumn) will not be renamed to AppID';


GO
PRINT N'Rename refactoring operation with key 09063a78-a3f1-4176-929c-4f14a73dbbb6 is skipped, element [dbo].[Developer].[Id] (SqlSimpleColumn) will not be renamed to SSN';


GO
PRINT N'Creating [dbo].[Application]...';


GO
CREATE TABLE [dbo].[Application] (
    [AppID]       INT             NOT NULL,
    [Name]        NVARCHAR (50)   NOT NULL,
    [Platform]    NVARCHAR (10)   NOT NULL,
    [OSVersion]   NVARCHAR (15)   NOT NULL,
    [AppVersion]  FLOAT (53)      NOT NULL,
    [Category]    NVARCHAR (20)   NOT NULL,
    [Description] NVARCHAR (1000) NOT NULL,
    [Price]       FLOAT (53)      NOT NULL,
    PRIMARY KEY CLUSTERED ([AppID] ASC)
);


GO
PRINT N'Creating [dbo].[Developer]...';


GO
CREATE TABLE [dbo].[Developer] (
    [SSN]        INT           NOT NULL,
    [Fname]      NVARCHAR (15) NOT NULL,
    [MINIT]      CHAR (1)      NOT NULL,
    [Lname]      NVARCHAR (15) NOT NULL,
    [DOB]        DATETIME      NOT NULL,
    [SEX]        CHAR (1)      NOT NULL,
    [Email]      NVARCHAR (50) NOT NULL,
    [Phone]      INT           NOT NULL,
    [Balance]    FLOAT (53)    NOT NULL,
    [AccountNum] INT           NOT NULL,
    [RoutingNum] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([SSN] ASC)
);


GO
PRINT N'Creating [dbo].[Review]...';


GO
CREATE TABLE [dbo].[Review] (
    [ReviewID] INT            NOT NULL,
    [Details]  NVARCHAR (300) NOT NULL,
    [Rating]   CHAR (1)       NOT NULL,
    PRIMARY KEY CLUSTERED ([ReviewID] ASC)
);


GO
PRINT N'Creating [dbo].[User]...';


GO
CREATE TABLE [dbo].[User] (
    [UID]   INT           NOT NULL,
    [Fname] NVARCHAR (15) NOT NULL,
    [MINIT] CHAR (1)      NOT NULL,
    [Lname] NVARCHAR (15) NOT NULL,
    [DOB]   DATETIME      NOT NULL,
    [SEX]   CHAR (1)      NOT NULL,
    [Email] NVARCHAR (50) NOT NULL,
    [Phone] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([UID] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[Developer]...';


GO
ALTER TABLE [dbo].[Developer]
    ADD DEFAULT 'M' FOR [SEX];


GO
PRINT N'Creating unnamed constraint on [dbo].[User]...';


GO
ALTER TABLE [dbo].[User]
    ADD DEFAULT 'M' FOR [SEX];


GO
PRINT N'Creating [dbo].[chk_dev_sex]...';


GO
ALTER TABLE [dbo].[Developer] WITH NOCHECK
    ADD CONSTRAINT [chk_dev_sex] CHECK (SEX IN('M', 'F'));


GO
PRINT N'Creating [dbo].[chk_dev_phone]...';


GO
ALTER TABLE [dbo].[Developer] WITH NOCHECK
    ADD CONSTRAINT [chk_dev_phone] CHECK (Phone between 11111111111 and 99999999999);


GO
PRINT N'Creating [dbo].[chk_dev_acct]...';


GO
ALTER TABLE [dbo].[Developer] WITH NOCHECK
    ADD CONSTRAINT [chk_dev_acct] CHECK (AccountNum between 1 and 99999999999999999);


GO
PRINT N'Creating [dbo].[chk_dev_routing]...';


GO
ALTER TABLE [dbo].[Developer] WITH NOCHECK
    ADD CONSTRAINT [chk_dev_routing] CHECK (RoutingNum between 111111111 and 999999999);


GO
PRINT N'Creating [dbo].[chk_rating]...';


GO
ALTER TABLE [dbo].[Review] WITH NOCHECK
    ADD CONSTRAINT [chk_rating] CHECK (Rating IN ('1', '2', '3', '4', '5'));


GO
PRINT N'Creating [dbo].[chk_user_sex]...';


GO
ALTER TABLE [dbo].[User] WITH NOCHECK
    ADD CONSTRAINT [chk_user_sex] CHECK (SEX IN('M', 'F'));


GO
PRINT N'Creating [dbo].[chk_user_phone]...';


GO
ALTER TABLE [dbo].[User] WITH NOCHECK
    ADD CONSTRAINT [chk_user_phone] CHECK (Phone between 11111111111 and 99999999999);


GO
-- Refactoring step to update target server with deployed transaction logs

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9a5554ec-eb1d-4825-8d35-a1daf0b087a4')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9a5554ec-eb1d-4825-8d35-a1daf0b087a4')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '935a252e-fbbc-418c-8c47-02b0f1f830fa')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('935a252e-fbbc-418c-8c47-02b0f1f830fa')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'bc8494c2-6937-47b7-8089-25565d1fd3ac')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('bc8494c2-6937-47b7-8089-25565d1fd3ac')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '09063a78-a3f1-4176-929c-4f14a73dbbb6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('09063a78-a3f1-4176-929c-4f14a73dbbb6')

GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Developer] WITH CHECK CHECK CONSTRAINT [chk_dev_sex];

ALTER TABLE [dbo].[Developer] WITH CHECK CHECK CONSTRAINT [chk_dev_phone];

ALTER TABLE [dbo].[Developer] WITH CHECK CHECK CONSTRAINT [chk_dev_acct];

ALTER TABLE [dbo].[Developer] WITH CHECK CHECK CONSTRAINT [chk_dev_routing];

ALTER TABLE [dbo].[Review] WITH CHECK CHECK CONSTRAINT [chk_rating];

ALTER TABLE [dbo].[User] WITH CHECK CHECK CONSTRAINT [chk_user_sex];

ALTER TABLE [dbo].[User] WITH CHECK CHECK CONSTRAINT [chk_user_phone];


GO
PRINT N'Update complete.';


GO
