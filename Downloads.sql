CREATE TABLE [dbo].[Downloads]
(
	[UID] INT NOT NULL, 
    [AppID] INT NOT NULL, 
    [TransactionTime] TIMESTAMP NOT NULL, 
    [Amount] MONEY NOT NULL, 
    [CardType] NVARCHAR(16) NULL, 
    [CardNum] NVARCHAR(19) NULL, 
    [ExpDate] DATETIME NULL, 
    [CICNum] INT NULL, 
    [BillingAddress] INT NULL, 
    CONSTRAINT [FK_Downloads_UID] FOREIGN KEY ([UID]) REFERENCES [User]([UID]), 
    CONSTRAINT [FK_Downloads_AppID] FOREIGN KEY ([AppID]) REFERENCES [Application]([AppID]), 
    CONSTRAINT [CK_Downloads_CardNum] CHECK (CardNum between 111111111111111 and 9999999999999999999), 
    CONSTRAINT [CK_Downloads_CICNum] CHECK (CICNum between 111 and 999), 
    CONSTRAINT [FK_Downloads_BillingAddress] FOREIGN KEY ([BillingAddress]) REFERENCES [BillingAddress]([UID])

)
