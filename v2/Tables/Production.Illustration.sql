/*=============================================================
Script header

Author:    Test_author
Version:   0.00.0000
Date:      11-05-2018 20:53:28
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017
Legal:     Test_legal

DATABASE:	AdventureWorks2016
  Tables:  Illustration


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [Production].[Illustration]
Print 'Create Table [Production].[Illustration]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[Illustration] (
		[IllustrationID]     [int] IDENTITY(1, 1) NOT NULL,
		[Diagram]            [xml] NULL,
		[ModifiedDate]       [datetime] NOT NULL,
		CONSTRAINT [PK_Illustration_IllustrationID]
		PRIMARY KEY
		CLUSTERED
		([IllustrationID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Illustration]
	ADD
	CONSTRAINT [DF_Illustration_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Illustration] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

