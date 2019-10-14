CREATE TABLE [dbo].[Downloads]
(
	[UID] INT NOT NULL, 
    [AppID] INT NOT NULL, 
    [TransactionTime] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    [Amount] MONEY NOT NULL, 
    [CardType] NVARCHAR(20) NULL, 
    [CardNum] NVARCHAR(19) NULL, 
    [ExpDate] DATETIME NULL, 
    [CICNum] INT NULL, 
    [BillingAddress] INT NULL, 
    CONSTRAINT [FK_Downloads_UID] FOREIGN KEY ([UID]) REFERENCES [User]([UID]), 
    CONSTRAINT [FK_Downloads_AppID] FOREIGN KEY ([AppID]) REFERENCES [Application]([AppID]), 
    CONSTRAINT [CK_Downloads_CardNum] CHECK (CardNum not like '%[^0-9]%'), 
    CONSTRAINT [CK_Downloads_CICNum] CHECK (CICNum between 000 and 999), 
    CONSTRAINT [FK_Downloads_BillingAddress] FOREIGN KEY ([BillingAddress]) REFERENCES [BillingAddress]([AddressID]),


)

GO

CREATE TRIGGER [dbo].[Trigger_Downloads]
    ON [dbo].[Downloads]
    AFTER INSERT
    AS
    BEGIN
        SET NoCount ON
    END