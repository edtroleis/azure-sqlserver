CREATE TABLE dbo.Customer
(CustomerID INT IDENTITY(1,1) NOT NULL,
FirstName VARCHAR(25) NOT NULL,
LastName VARCHAR(25) NOT NULL,
PhoneNumber VARCHAR(15) NOT NULL,
EmailAddress VARCHAR(25) NULL,
Priority INT NOT NULL,
CreateDate DATETIME NOT NULL)ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [DF_Customer_CreateDate] 
DEFAULT (getdate()) FOR [CreateDate]
GO

INSERT INTO [dbo].[Customer]
 ([FirstName]
 ,[LastName]
 ,[PhoneNumber]
 ,[EmailAddress]
 ,[Priority]
 ,[CreateDate])
VALUES
 ('Jonah'
 ,'Hook'
 ,'777-777-7777'
 ,'jonah@neverdull.com'
 ,1
 ,'2011-09-01')
GO

INSERT INTO [dbo].[Customer]
 ([FirstName]
 ,[LastName]
 ,[PhoneNumber]
 ,[EmailAddress]
 ,[Priority])
VALUES
 ('Ethan'
 ,'Monkey'
 ,'111-111-1111'
 ,'ethan@banana.com'
 ,1)
GO

SELECT * FROM dbo.Customer;
