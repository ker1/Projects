/*=============================================================
Script header

Author:    Test_author
Version:   0.00.0000
Date:      11-05-2018 20:53:28
Server:    DESKTOP-5NIEHLS\SQLEXPRESS2017
Legal:     Test_legal

DATABASE:	AdventureWorks2016
  Functions:  ufnGetPurchaseOrderStatusText


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Function [dbo].[ufnGetPurchaseOrderStatusText]
Print 'Create Function [dbo].[ufnGetPurchaseOrderStatusText]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

CREATE FUNCTION [dbo].[ufnGetPurchaseOrderStatusText](@Status [tinyint])
RETURNS [nvarchar](15) 
AS 
-- Returns the sales order status text representation for the status value.
BEGIN
    DECLARE @ret [nvarchar](15);

    SET @ret = 
        CASE @Status
            WHEN 1 THEN 'Pending'
            WHEN 2 THEN 'Approved'
            WHEN 3 THEN 'Rejected'
            WHEN 4 THEN 'Complete'
            ELSE '** Invalid **'
        END;
    
    RETURN @ret
END;
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
