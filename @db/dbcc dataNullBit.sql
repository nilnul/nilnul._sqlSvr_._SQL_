/*
How does SQL Server really store NULL-s 

I've been asked this question so many times now that it'd be easier if i just gave people a link to read. :)

So in short (for those who are too lazy to dwelve deeper into sql internals):

Each row has a null bitmap for columns that allow nulls. If the row in that column is null then a bit in the bitmap is 1 else it's 0.

For variable size datatypes the acctual size is 0 bytes.

For fixed size datatype the acctual size is the default datatype size in bytes set to default value (0 for numbers, '' for chars).

 

Let's have two simple table t1 and t2. t1 will be used for fixed datatype and t2 for variable datatype.

 

Fixed datatype and table t1: 
*/
USE tempdb
GO

if  OBJECT_ID('t1', 'U') IS NOT NULL 
	begin
		drop table t1
	end
CREATE TABLE t1
(
    id INT NOT NULL PRIMARY KEY,
    testNull CHAR(10) NULL
)
GO
INSERT INTO t1
SELECT 1, '1234567890' UNION ALL
SELECT 2, '' UNION ALL
SELECT 3, NULL

-- we see that the NULL returns NULL for DATALENGTH
SELECT  DATALENGTH(testNull), *
FROM    t1
GO

-- needed for DBCC PAGE execution
DBCC traceon(3604)
GO
DBCC IND(tempdb, t1, -1)
GO
-- 1 = filenumber,  41 = page id returned by DBCC IND, 1 = output option
-- the correct page id can be found in the column PagePID 
-- where PageType = 1 and PrevPageFID = 0 and PrevPagePID = 0
DBCC PAGE (tempdb, 1, 41, 1)

GO
DROP TABLE t1

 go
 /*

The result of DBCC PAGE is this: 
-- parts in blue bold are values for testNull column
-- parts in red bold are null bitmaps

-- ROW 1
Slot 0, Offset 0x60, Length 21, DumpStyle BYTE

Record Type = PRIMARY_RECORD         Record Attributes =  NULL_BITMAP     
Memory Dump @0x4594C060

00000000:   10001200 01000000 31323334 35363738 †........12345678         
00000010:   39300200 fc††††††††††††††††††††††††††90...                    

-- ROW 2
Slot 1, Offset 0x75, Length 21, DumpStyle BYTE

Record Type = PRIMARY_RECORD         Record Attributes =  NULL_BITMAP     
Memory Dump @0x4594C075

00000000:   10001200 02000000 20202020 20202020 †........                 
00000010:   20200200 fc††††††††††††††††††††††††††  ...                    

-- ROW 3
Slot 2, Offset 0x8a, Length 21, DumpStyle BYTE

Record Type = PRIMARY_RECORD         Record Attributes =  NULL_BITMAP     
Memory Dump @0x4594C08A

00000000:   10001200 03000000 20202020 20202020 †........                 
00000010:   20200200 fe††††††††††††††††††††††††††  ...                    


 

Variable datatype and table t2:  
*/
USE tempdb
CREATE TABLE t2
(
    id INT NOT NULL PRIMARY KEY,
    textNull VARCHAR(10) NULL
)
GO
INSERT INTO t2
SELECT 1, '1234567890' UNION ALL
SELECT 2, '' UNION ALL
SELECT 3, NULL

SELECT  *
FROM    t2
GO

DBCC TRACEON(3604)
GO
DBCC IND(tempdb, t2, -1)
GO
-- 1 = filenumber,  93 = page id returned by DBCC IND, 1 = output option
-- the correct page id can be found in the column PagePID 
-- where PageType = 1 and PrevPageFID = 0 and PrevPagePID = 0
DBCC PAGE (tempdb, 1, 93, 1)

GO
DROP TABLE t2

 go
 /*

The result of DBCC PAGE is this: 
-- parts in blue bold are values for testNull column
-- parts in red bold are null bitmaps

-- ROW 1
Slot 0, Offset 0x60, Length 25, DumpStyle BYTE

Record Type = PRIMARY_RECORD         Record Attributes =  NULL_BITMAP VARIABLE_COLUMNS

Memory Dump @0x458CC060

00000000:   30000800 01000000 0200fc01 00190031 †0..............1         
00000010:   32333435 36373839 30†††††††††††††††††234567890                

-- ROW 2
Slot 1, Offset 0x79, Length 11, DumpStyle BYTE

Record Type = PRIMARY_RECORD         Record Attributes =  NULL_BITMAP     
Memory Dump @0x458CC079

00000000:   10000800 02000000 0200fc†††††††††††††...........              

-- ROW 3
Slot 2, Offset 0x84, Length 11, DumpStyle BYTE

Record Type = PRIMARY_RECORD         Record Attributes =  NULL_BITMAP     
Memory Dump @0x458CC084

00000000:   10000800 03000000 0200fe†††††††††††††...........              


 

We can see that the fixed datatype CHAR(10) acctually takes 10 bytes which are all spaces in 2nd and 3rd row but in the 3rd row a NULL bitmap is set so it treats this as null.

The variable datatype VARCHAR(10) acctually takes only the bytes it needs. 10 bytes in the first row and 0 bytes in 2nd and 3rd rows. Also 3rd row has its NULL bitmap set. 

How do i know this? Simple:

fc in binary is 11111100 

Since we have only 2 columns we only care for 2 rightmost bits. Both are set to 0 which means that the row has no null.

fe in binary is 11111110 

which means we have a null in second column in our row. 
*/