/****** Object:  StoredProcedure [Sales].[SubProcedure1]    Script Date: 14/03/2025 11:04:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Sales].[SubProcedure1]
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = 'UPDATE Sales.Employee  
        SET Bonus = CASE WHEN Salary > 5000 THEN 500 ELSE 200 END;
    ';

    EXEC sp_executesql @SQL;
END;
