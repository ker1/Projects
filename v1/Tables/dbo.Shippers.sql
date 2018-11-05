/*=============================================================
Script header

Version:   0.00.0000
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017

DATABASE:	NORTHWND
  Tables:  Shippers


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [dbo].[Shippers]
Print 'Create Table [dbo].[Shippers]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Shippers] (
		[ShipperID]       [int] IDENTITY(1, 1) NOT NULL,
		[CompanyName]     [nvarchar](40) NOT NULL,
		[Phone]           [nvarchar](24) NULL,
		CONSTRAINT [PK_Shippers]
		PRIMARY KEY
		CLUSTERED
		([ShipperID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Shippers] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

