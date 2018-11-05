/*=============================================================
Script header

Author:    Test_author
Version:   0.00.0000
Date:      11-05-2018 20:53:29
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017
Legal:     Test_legal

DATABASE:	AdventureWorks2016
  Tables:  EmployeePayHistory


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [HumanResources].[EmployeePayHistory]
Print 'Create Table [HumanResources].[EmployeePayHistory]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [HumanResources].[EmployeePayHistory] (
		[BusinessEntityID]     [int] NOT NULL,
		[RateChangeDate]       [datetime] NOT NULL,
		[Rate]                 [money] NOT NULL,
		[PayFrequency]         [tinyint] NOT NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_EmployeePayHistory_BusinessEntityID_RateChangeDate]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [RateChangeDate])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	ADD
	CONSTRAINT [CK_EmployeePayHistory_PayFrequency]
	CHECK
	([PayFrequency]=(2) OR [PayFrequency]=(1))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
CHECK CONSTRAINT [CK_EmployeePayHistory_PayFrequency]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	ADD
	CONSTRAINT [CK_EmployeePayHistory_Rate]
	CHECK
	([Rate]>=(6.50) AND [Rate]<=(200.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
CHECK CONSTRAINT [CK_EmployeePayHistory_Rate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	ADD
	CONSTRAINT [DF_EmployeePayHistory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [HumanResources].[EmployeePayHistory]
	CHECK CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

