--drop table [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}', 'U')

IF OBJECT_ID('[Target].[dbo].[client_output_v3_{DATENOWADD(Days|-12|yyyyMMdd)}', 'U') IS NOT NULL
	TRUNCATE TABLE [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)};

---{DATEFORMAT(MMddyyyy)}
ELSE
	CREATE TABLE [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}(
	[Market Name] [varchar](50) NULL,
	[UPC] [bigint] NULL,
	[UPC Description] [varchar](250) NULL,
	[Time Period] [varchar](50) NULL,
	[Retail Condition] [varchar](10) NULL,
	[# Of Banners] [smallint] NULL,
	[Duplicate Flag] [varchar](MAX) NULL,
	[%ACV] [real] NULL,
	[%ACV - Comp Mkt] [real] NULL,
	[Total Store Weeks] [smallint] NULL,
	[Total Store Weeks - Comp Mkt] [int] NULL,
	[Units (Proj)] [bigint] NULL,
	[Units (Proj) - Comp Mkt] [bigint] NULL,
	[% Units (Proj)] [real] NULL,
	[% Units (Proj) - Comp Mkt] [real] NULL,
	[Value (Proj)] [bigint] NULL,
	[Value (Proj) - Comp Mkt] [bigint] NULL,
	[% Value (Proj)] [real] NULL,
	[% Value (Proj) - Comp Mkt] [real] NULL,
	[Average Price] [real] NULL,
	[Average Price - Comp Mkt] [real] NULL,
	[Lowest Price] [real] NULL,
	[Lowest Price - Comp Mkt] [real] NULL,
	[Max Price] [real] NULL,
	[Max Price - Comp Mkt] [real] NULL,
	[Elasticity Estimate - Total Mkt] [real] NULL,
	[MCP1 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP1] [real] NULL,
	[MCP1 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP1- Comp Mkt] [real] NULL,
	[MCP2 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP2] [real] NULL,
	[MCP2 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP2- Comp Mkt] [real] NULL,
	[MCP3 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP3] [real] NULL,
	[MCP3 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP3- Comp Mkt] [real] NULL,
	[MCP4 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP4] [real] NULL,
	[MCP4 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP4- Comp Mkt] [real] NULL,
	[MCP5 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP5] [real] NULL,
	[MCP5 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP5- Comp Mkt] [real] NULL,
	[MCP6 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP6] [real] NULL,
	[MCP6 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP6- Comp Mkt] [real] NULL,
	[MCP7 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP7] [real] NULL,
	[MCP7 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP7- Comp Mkt] [real] NULL,
	[MCP8 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP8] [real] NULL,
	[MCP8 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP8- Comp Mkt] [real] NULL,
	[MCP9 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP9] [real] NULL,
	[MCP9 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP9- Comp Mkt] [real] NULL,
	[MCP10 - BASED ON UNITS] [real] NULL,
	[% OF UNITS at MCP10] [real] NULL,
	[MCP10 - BASED ON UNITS - Comp Mkt] [real] NULL,
	[% OF UNITS  at MCP10- Comp Mkt] [real] NULL,
	[5% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[5% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[10% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[10% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[15% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[15% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[20% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[20% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[25% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[25% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[30% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[30% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[35% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[35% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[40% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[40% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[45% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[45% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[50% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[50% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[55% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[55% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[60% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[60% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[65% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[65% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[70% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[70% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[75% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[75% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[80% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[80% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[85% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[85% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[90% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[90% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL,
	[95% PERCENTILE PRICE - BASED ON UNITS] [real] NULL,
	[95% PERCENTILE PRICE - BASED ON UNITS - Comp Mkt] [real] NULL
	)

UPDATE STATISTICS [Target].[dbo].[client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}]

/*****   Bulk Insert  *****/

DECLARE @bulk_cmd varchar(1000)
SET @bulk_cmd = 'BULK INSERT [Target].[dbo].[client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}] -- Keep your title consistent
FROM ''\\daywinrcad001\C\Target\NIS.csv'' --This is the path for your .csv that you will be bulk inserting. 
WITH (DATAFILETYPE = ''char'',
	  CODEPAGE = ''ACP'',
      FIRSTROW = 2,
      ROWTERMINATOR = ''0x0a'',
      FIELDTERMINATOR = '','',
	  BATCHSIZE = 10000)'
EXEC(@bulk_cmd);

UPDATE STATISTICS [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}