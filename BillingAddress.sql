CREATE TABLE [dbo].[BillingAddress]
(
	[AddressID] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [Street] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] CHAR(2) NULL, 
    [Zipcode] INT NULL, 
    [UID] INT NOT NULL, 
    CONSTRAINT [CK_BillingAddress_State] CHECK (State IN('AK', 'AL', 'AR', 'AS', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'GU', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MP', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'PR', 'RI', 'SC', 'SD', 'TN', 'TX', 'UM', 'UT', 'VA', 'VI', 'VT', 'WA', 'WI', 'WV', 'WY')),
    CONSTRAINT [CK_BillingAddress_Zipcode] CHECK (Zipcode BETWEEN 1 AND 99999), 
    CONSTRAINT [FK_BillingAddress_User] FOREIGN KEY ([UID]) REFERENCES [User]([UID])
)