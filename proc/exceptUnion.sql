create  proc ##sp_DropAllTemp
    @DropGlobal bit=0 --Default dont drop global temp table
AS

DECLARE @DROP_STATEMENT nvarchar(1000)
DECLARE cursorDEL CURSOR FOR
SELECT 'DROP TABLE ' 
    + case 
            when name like '##%' then name 
            when name like '#%' then SUBSTRING(name, 1, CHARINDEX( '____', name)-1) 
     end as DropSQL
from tempdb..sysobjects
WHERE name LIKE '#%' 
    AND OBJECT_ID('tempdb..' + name) IS NOT NULL 
    AND name not like case 
                        when @DropGlobal=0 then '##%' --//Exclude global temp
                        else '#######%'    --//some fack expression so we can 
                                            --//select global temp for delete
                     end

    --//eventhough we have selected all records from sysobjects
    --//but one can access only temp table created by same connection
    --//executing this procedure

OPEN cursorDEL
FETCH NEXT FROM cursorDEL INTO @DROP_STATEMENT
WHILE @@FETCH_STATUS = 0
BEGIN
EXEC (@DROP_STATEMENT)
 print @DROP_STATEMENT
FETCH NEXT FROM cursorDEL INTO @DROP_STATEMENT
END
CLOSE cursorDEL
DEALLOCATE cursorDEL

GO