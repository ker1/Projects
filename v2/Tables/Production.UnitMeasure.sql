/*=============================================================
Script header

Author:    Test_author
Version:   0.00.0000
Date:      11-05-2018 20:53:28
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017
Legal:     Test_legal

DATABASE:	AdventureWorks2016
  Tables:  UnitMeasure


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [Production].[UnitMeasure]
Print 'Create Table [Production].[UnitMeasure]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[UnitMeasure] (
		[UnitMeasureCode]     [nchar](3) NOT NULL,
		[Name]                [dbo].[Name] NOT NULL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_UnitMeasure_UnitMeasureCode]
		PRIMARY KEY
		CLUSTERED
		([UnitMeasureCode])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[UnitMeasure]
	ADD
	CONSTRAINT [DF_UnitMeasure_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_UnitMeasure_Name]
	ON [Production].[UnitMeasure] ([Name])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[UnitMeasure] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

