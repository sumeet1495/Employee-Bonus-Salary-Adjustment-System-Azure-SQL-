/****** Object:  Table [Sales].[Employee]    Script Date: 14/03/2025 11:11:16 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Sales].[Employee](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](100) NULL,
	[Salary] [decimal](10, 2) NULL,
	[Bonus] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


