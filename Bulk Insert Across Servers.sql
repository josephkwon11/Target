--drop table [Target].[dbo].AB_Pricing_Formulas2', 'U')

IF OBJECT_ID('[Target].[dbo].[AB_Pricing_Formulas2]', 'U') IS NOT NULL
	TRUNCATE TABLE [Target].[dbo].AB_Pricing_Formulas2;

---{DATEFORMAT(MMddyyyy)}
ELSE
	CREATE TABLE [Target].[dbo].AB_Pricing_Formulas2(
	[Market Name] [varchar](50) NULL,
	[UPC] [bigint] NULL,
	[UPC Description] [varchar](250) NULL,
	)

UPDATE STATISTICS [Target].[dbo].[AB_Pricing_Formulas2]

/*****   Bulk Insert  *****/

DECLARE @bulk_cmd varchar(1000)
SET @bulk_cmd = 'BULK INSERT [Target].[dbo].[AB_Pricing_Formulas2]
FROM ''\\daywinrcap001\C\Target\NIS.csv''
WITH (DATAFILETYPE = ''char'',
	  CODEPAGE = ''ACP'',
      FIRSTROW = 2,
      ROWTERMINATOR = ''0x0a'',
      FIELDTERMINATOR = '','',
	  BATCHSIZE = 10000)'
EXEC(@bulk_cmd);

UPDATE STATISTICS [Target].[dbo].AB_Pricing_Formulas2
