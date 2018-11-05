/*=============================================================
Script header

Version:   0.00.0000
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017

DATABASE:	NORTHWND
  Tables:  Territories


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [dbo].[Territories]
Print 'Create Table [dbo].[Territories]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Territories] (
		[TerritoryID]              [nvarchar](20) NOT NULL,
		[TerritoryDescription]     [nchar](50) NOT NULL,
		[RegionID]                 [int] NOT NULL,
		CONSTRAINT [PK_Territories]
		PRIMARY KEY
		NONCLUSTERED
		([TerritoryID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Territories] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[Territories]
	WITH CHECK
	ADD CONSTRAINT [FK_Territories_Region]
	FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
ALTER TABLE [dbo].[Territories]
	CHECK CONSTRAINT [FK_Territories_Region]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

