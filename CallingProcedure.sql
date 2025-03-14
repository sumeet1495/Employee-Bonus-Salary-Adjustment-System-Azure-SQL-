/****** Object:  StoredProcedure [Sales].[CallingProcedure]    Script Date: 14/03/2025 11:04:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Sales].[CallingProcedure]
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    -- Calling SubProcedure1 
    EXEC Sales.SubProcedure1;

    -- Calling SubProcedure2 
    EXEC Sales.SubProcedure2;

    -- Showing final updated records
    
    SET @SQL = 'SELECT * FROM Sales.Employee;';
    EXEC sp_executesql @SQL;
END;