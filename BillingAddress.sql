CREATE TABLE [dbo].[BillingAddress]
(
	[UID] INT NOT NULL, 
    [Street] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] CHAR(2) NULL, 
    [Zipcode] INT NULL, 
    CONSTRAINT [CK_BillingAddress_State] CHECK (State IN('AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY')), 
    CONSTRAINT [CK_BillingAddress_Zipcode] CHECK (Zipcode BETWEEN 11111 AND 99999), 
    CONSTRAINT [FK_BillingAddress_User] FOREIGN KEY ([UID]) REFERENCES [User]([UID]), 
    CONSTRAINT [PK_BillingAddress] PRIMARY KEY ([UID])
)