-- THIS ONLY WORKS ON VISUALCRON. MAKE SURE YOU CHANGE THE "DATENOWADD" FUNCTION (CHANGING NUMBER)
Use [Target]

IF OBJECT_ID('[Target].[dbo].[Test_{DATENOWADD(Days|-10|yyyyMMdd)}', 'U') IS NOT NULL
	TRUNCATE TABLE [Target].[dbo].Test_{DATENOWADD(Days|-10|yyyyMMdd)};

ELSE
	CREATE TABLE [Target].[dbo].Test_{DATENOWADD(Days|-10|yyyyMMdd)}(
	[Market Name] [varchar](50) NULL,
	[UPC] [bigint] NULL,
	[UPC Description] [varchar](250) NULL,
	...
	);
