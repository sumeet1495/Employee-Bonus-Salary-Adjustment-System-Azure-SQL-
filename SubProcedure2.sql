/****** Object:  StoredProcedure [Sales].[SubProcedure2]    Script Date: 14/03/2025 11:05:04 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Sales].[SubProcedure2]
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
        UPDATE Sales.Employee  
        SET Salary = Salary * 1.10
        WHERE Bonus = 500;
    ';

    EXEC sp_executesql @SQL;
END;
