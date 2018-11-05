/*=============================================================
Script header

Author:    Test_author
Version:   0.00.0000
Date:      11-05-2018 20:53:28
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017
Legal:     Test_legal

DATABASE:	AdventureWorks2016
  Tables:  DatabaseLog


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [dbo].[DatabaseLog]
Print 'Create Table [dbo].[DatabaseLog]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[DatabaseLog] (
		[DatabaseLogID]     [int] IDENTITY(1, 1) NOT NULL,
		[PostTime]          [datetime] NOT NULL,
		[DatabaseUser]      [sysname] NOT NULL,
		[Event]             [sysname] NOT NULL,
		[Schema]            [sysname] NULL,
		[Object]            [sysname] NULL,
		[TSQL]              [nvarchar](max) NOT NULL,
		[XmlEvent]          [xml] NOT NULL,
		CONSTRAINT [PK_DatabaseLog_DatabaseLogID]
		PRIMARY KEY
		NONCLUSTERED
		([DatabaseLogID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[DatabaseLog] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

