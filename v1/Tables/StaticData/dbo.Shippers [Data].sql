
-- Insert scripts for table: Shippers
PRINT 'Inserting rows into table: Shippers'
SET IDENTITY_INSERT [dbo].[Shippers] ON

INSERT INTO [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (1, N'Speedy Express', N'(503) 555-9831')
INSERT INTO [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (2, N'United Package', N'(503) 555-3199')
INSERT INTO [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (3, N'Federal Shipping', N'(503) 555-9931')
GO

SET IDENTITY_INSERT [dbo].[Shippers] OFF


