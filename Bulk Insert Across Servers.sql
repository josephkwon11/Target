IF OBJECT_ID('[Client].[dbo].[NIS_Table]', 'U') IS NOT NULL
	TRUNCATE TABLE [Client].[dbo].NIS_Table;

ELSE
	CREATE TABLE [Client].[dbo].NIS_Table(
	[Market Name] [varchar](50) NULL,
	[UPC] [bigint] NULL,
	[UPC Description] [varchar](250) NULL,
	)

UPDATE STATISTICS [Client].[dbo].[NIS_Table]

/*****   Bulk Insert  *****/

DECLARE @bulk_cmd varchar(1000)
SET @bulk_cmd = 'BULK INSERT [Client].[dbo].[NIS_Table]
FROM ''\\daywinrcap001\H\Client\NIS.csv''
WITH (DATAFILETYPE = ''char'',
	  CODEPAGE = ''ACP'',
      FIRSTROW = 2,
      ROWTERMINATOR = ''0x0a'',
      FIELDTERMINATOR = ''|'',
	  BATCHSIZE = 10000)'
EXEC(@bulk_cmd);

UPDATE STATISTICS [Client].[dbo].NIS_Table
