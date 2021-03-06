Use [Target]

DECLARE @Query1 TABLE(Files varchar(250), ID INT IDENTITY (1,1));

DECLARE @Query2 VARCHAR(250);

DECLARE @SQL_BULK VARCHAR(MAX);

INSERT INTO @Query1
SELECT
top 13 [TABLE_NAME] -- Change this according to how many tables you want the query to find.
FROM INFORMATION_SCHEMA.TABLES f
where [TABLE_NAME] like 'client_output_AB%' -- Change this to help the query search for a specific table. 
ORDER BY [TABLE_NAME] DESC;

WHILE EXISTS (SELECT * FROM @Query1)
BEGIN
-- select count(*) from @Query1
SELECT @Query2 = MIN(Files) From @Query1;
-- select @Query2
if((select count(*) from @Query1) > 1)
BEGIN
set @SQL_BULK = concat(@SQL_BULK,(select
'SELECT * FROM ' + @Query2 + ' where [Time Period] like ''13 Weeks%'' UNION ALL'))  -- This is where you can change your where clause. 
END
ELSE
BEGIN
set @SQL_BULK = concat(@SQL_BULK,(select
'SELECT * FROM ' + @Query2 + ' where [Time Period] like ''13 Weeks%''')) -- This is where you can change your where clause.
END

Delete From @Query1 Where Files = @Query2;
-- select count(*) from @Query1
END

select @SQL_BULK
