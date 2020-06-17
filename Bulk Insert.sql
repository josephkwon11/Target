--drop table [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}', 'U')

IF OBJECT_ID('[Target].[dbo].[client_output_v3_{DATENOWADD(Days|-12|yyyyMMdd)}', 'U') IS NOT NULL
	TRUNCATE TABLE [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)};

---{DATEFORMAT(MMddyyyy)}
ELSE
	CREATE TABLE [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}(
	[Market Name] [varchar](50) NULL,
	[UPC] [bigint] NULL,
	[UPC Description] [varchar](250) NULL,
	...
	)

UPDATE STATISTICS [Target].[dbo].[client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}]

/*****   Bulk Insert  *****/

DECLARE @bulk_cmd varchar(1000)
SET @bulk_cmd = 'BULK INSERT [Target].[dbo].[client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}]
FROM ''\\daywinrcad001\C\Target\NIS.csv''
WITH (DATAFILETYPE = ''char'',
	  CODEPAGE = ''ACP'',
      FIRSTROW = 2,
      ROWTERMINATOR = ''0x0a'',
      FIELDTERMINATOR = '','',
	  BATCHSIZE = 10000)'
EXEC(@bulk_cmd);

UPDATE STATISTICS [Target].[dbo].client_output_v3_{DATENOWADD(Days|-10|yyyyMMdd)}
