-- Foreign Key Constraint Disable's for Table: [dbo].[CustomerCustomerDemo]
Print 'Foreign Key Constraint Disable''s for Table: [dbo].[CustomerCustomerDemo]'
ALTER TABLE [dbo].[CustomerCustomerDemo] NOCHECK CONSTRAINT [FK_CustomerCustomerDemo]
ALTER TABLE [dbo].[CustomerCustomerDemo] NOCHECK CONSTRAINT [FK_CustomerCustomerDemo_Customers]


-- No rows are in CustomerCustomerDemo
PRINT 'No rows are in CustomerCustomerDemo'

