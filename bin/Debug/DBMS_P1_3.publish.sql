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
USE [master];


GO

IF (DB_ID(N'$(DatabaseName)') IS NOT NULL) 
BEGIN
    ALTER DATABASE [$(DatabaseName)]
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [$(DatabaseName)];
END

GO
PRINT N'Creating $(DatabaseName)...'
GO
CREATE DATABASE [$(DatabaseName)]
    ON 
    PRIMARY(NAME = [$(DatabaseName)], FILENAME = N'$(DefaultDataPath)$(DefaultFilePrefix)_Primary.mdf')
    LOG ON (NAME = [$(DatabaseName)_log], FILENAME = N'$(DefaultLogPath)$(DefaultFilePrefix)_Primary.ldf') COLLATE SQL_Latin1_General_CP1_CI_AS
GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CLOSE OFF 
            WITH ROLLBACK IMMEDIATE;
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
                NUMERIC_ROUNDABORT OFF,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                RECOVERY FULL,
                CURSOR_CLOSE_ON_COMMIT OFF,
                AUTO_CREATE_STATISTICS ON,
                AUTO_SHRINK OFF,
                AUTO_UPDATE_STATISTICS ON,
                RECURSIVE_TRIGGERS OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ALLOW_SNAPSHOT_ISOLATION OFF;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET READ_COMMITTED_SNAPSHOT OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_UPDATE_STATISTICS_ASYNC OFF,
                PAGE_VERIFY NONE,
                DATE_CORRELATION_OPTIMIZATION OFF,
                DISABLE_BROKER,
                PARAMETERIZATION SIMPLE,
                SUPPLEMENTAL_LOGGING OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET TRUSTWORTHY OFF,
        DB_CHAINING OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'The database settings cannot be modified. You must be a SysAdmin to apply these settings.';
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET HONOR_BROKER_PRIORITY OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'The database settings cannot be modified. You must be a SysAdmin to apply these settings.';
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF),
                CONTAINMENT = NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF),
                MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = OFF,
                DELAYED_DURABILITY = DISABLED 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET TEMPORAL_HISTORY_RETENTION ON 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF fulltextserviceproperty(N'IsFulltextInstalled') = 1
    EXECUTE sp_fulltext_database 'enable';


GO
PRINT N'Creating [dbo].[Application]...';


GO
CREATE TABLE [dbo].[Application] (
    [AppID]        INT             NOT NULL,
    [Name]         NVARCHAR (50)   NULL,
    [Platform]     NVARCHAR (10)   NOT NULL,
    [OSVersion]    NVARCHAR (15)   NOT NULL,
    [AppVersion]   FLOAT (53)      NOT NULL,
    [Category]     NVARCHAR (20)   NOT NULL,
    [Description]  NVARCHAR (1000) NULL,
    [Price]        MONEY           NOT NULL,
    [DeveloperSSN] INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([AppID] ASC)
);


GO
PRINT N'Creating [dbo].[Developer]...';


GO
CREATE TABLE [dbo].[Developer] (
    [SSN]        INT           NOT NULL,
    [Fname]      NVARCHAR (15) NOT NULL,
    [MINIT]      CHAR (1)      NULL,
    [Lname]      NVARCHAR (15) NOT NULL,
    [DOB]        DATETIME      NOT NULL,
    [SEX]        CHAR (1)      NULL,
    [Email]      NVARCHAR (50) NOT NULL,
    [Phone]      INT           NULL,
    [Balance]    MONEY         NOT NULL,
    [AccountNum] INT           NOT NULL,
    [RoutingNum] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([SSN] ASC)
);


GO
PRINT N'Creating [dbo].[Downloads]...';


GO
CREATE TABLE [dbo].[Downloads] (
    [UID]             INT           NOT NULL,
    [AppID]           INT           NOT NULL,
    [TransactionTime] TIMESTAMP     NOT NULL,
    [Amount]          MONEY         NOT NULL,
    [CardType]        NVARCHAR (16) NULL,
    [CardNum]         NVARCHAR (19) NULL,
    [ExpDate]         DATETIME      NULL,
    [CICNum]          INT           NULL
);


GO
PRINT N'Creating [dbo].[Review]...';


GO
CREATE TABLE [dbo].[Review] (
    [ReviewID]   INT            NOT NULL,
    [Details]    NVARCHAR (300) NULL,
    [Rating]     CHAR (1)       NULL,
    [ReviewerID] INT            NOT NULL,
    [AppID]      INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([ReviewID] ASC)
);


GO
PRINT N'Creating [dbo].[User]...';


GO
CREATE TABLE [dbo].[User] (
    [UID]   INT           NOT NULL,
    [Fname] NVARCHAR (15) NOT NULL,
    [MINIT] CHAR (1)      NULL,
    [Lname] NVARCHAR (15) NOT NULL,
    [DOB]   DATETIME      NOT NULL,
    [SEX]   CHAR (1)      NULL,
    [Email] NVARCHAR (50) NOT NULL,
    [Phone] INT           NULL,
    PRIMARY KEY CLUSTERED ([UID] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[Developer]...';


GO
ALTER TABLE [dbo].[Developer]
    ADD DEFAULT 0.00 FOR [Balance];


GO
PRINT N'Creating unnamed constraint on [dbo].[User]...';


GO
ALTER TABLE [dbo].[User]
    ADD DEFAULT 'M' FOR [SEX];


GO
PRINT N'Creating [dbo].[FK_Application_ToDeveloper]...';


GO
ALTER TABLE [dbo].[Application]
    ADD CONSTRAINT [FK_Application_ToDeveloper] FOREIGN KEY ([DeveloperSSN]) REFERENCES [dbo].[Developer] ([SSN]);


GO
PRINT N'Creating [dbo].[FK_Downloads_UID]...';


GO
ALTER TABLE [dbo].[Downloads]
    ADD CONSTRAINT [FK_Downloads_UID] FOREIGN KEY ([UID]) REFERENCES [dbo].[User] ([UID]);


GO
PRINT N'Creating [dbo].[FK_Downloads_AppID]...';


GO
ALTER TABLE [dbo].[Downloads]
    ADD CONSTRAINT [FK_Downloads_AppID] FOREIGN KEY ([AppID]) REFERENCES [dbo].[Application] ([AppID]);


GO
PRINT N'Creating [dbo].[FK_Review_ToUser]...';


GO
ALTER TABLE [dbo].[Review]
    ADD CONSTRAINT [FK_Review_ToUser] FOREIGN KEY ([ReviewerID]) REFERENCES [dbo].[User] ([UID]);


GO
PRINT N'Creating [dbo].[FK_Review_ToApplication]...';


GO
ALTER TABLE [dbo].[Review]
    ADD CONSTRAINT [FK_Review_ToApplication] FOREIGN KEY ([AppID]) REFERENCES [dbo].[Application] ([AppID]);


GO
PRINT N'Creating [dbo].[chk_dev_sex]...';


GO
ALTER TABLE [dbo].[Developer]
    ADD CONSTRAINT [chk_dev_sex] CHECK (SEX IN('M', 'F'));


GO
PRINT N'Creating [dbo].[chk_dev_phone]...';


GO
ALTER TABLE [dbo].[Developer]
    ADD CONSTRAINT [chk_dev_phone] CHECK (Phone between 11111111111 and 99999999999);


GO
PRINT N'Creating [dbo].[chk_dev_acct]...';


GO
ALTER TABLE [dbo].[Developer]
    ADD CONSTRAINT [chk_dev_acct] CHECK (AccountNum between 1 and 99999999999999999);


GO
PRINT N'Creating [dbo].[chk_dev_routing]...';


GO
ALTER TABLE [dbo].[Developer]
    ADD CONSTRAINT [chk_dev_routing] CHECK (RoutingNum between 111111111 and 999999999);


GO
PRINT N'Creating [dbo].[CK_Downloads_CardNum]...';


GO
ALTER TABLE [dbo].[Downloads]
    ADD CONSTRAINT [CK_Downloads_CardNum] CHECK (CardNum between 111111111111111 and 9999999999999999999);


GO
PRINT N'Creating [dbo].[chk_rating]...';


GO
ALTER TABLE [dbo].[Review]
    ADD CONSTRAINT [chk_rating] CHECK (Rating IN ('1', '2', '3', '4', '5'));


GO
PRINT N'Creating [dbo].[chk_user_sex]...';


GO
ALTER TABLE [dbo].[User]
    ADD CONSTRAINT [chk_user_sex] CHECK (SEX IN('M', 'F'));


GO
PRINT N'Creating [dbo].[chk_user_phone]...';


GO
ALTER TABLE [dbo].[User]
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
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '287c68e2-e2db-408e-a0c0-467364f11043')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('287c68e2-e2db-408e-a0c0-467364f11043')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9973f7ed-5a10-41b3-be31-1b34f4af3aa0')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9973f7ed-5a10-41b3-be31-1b34f4af3aa0')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '4b64a1a0-1f9a-46c2-b716-cc1c288699b4')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('4b64a1a0-1f9a-46c2-b716-cc1c288699b4')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'dd920006-d60f-4f25-ba8c-a4c620ea7520')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('dd920006-d60f-4f25-ba8c-a4c620ea7520')

GO

GO
PRINT N'Update complete.';


GO
