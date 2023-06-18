

1- you could use it in an "INCLUDE"

IF OBJECT_ID('tempdb..#example') IS NOT NULL 
BEGIN
    DROP TABLE #example
END

CREATE TABLE #example (id INT PRIMARY KEY IDENTITY(1,1), name VARCHAR(MAX))

CREATE NONCLUSTERED INDEX IDX_NC_temp_example_name ON #example(id) INCLUDE(name)

2-or You may consider to use "CHECKSUM" method. It's inteded for buidling hash indexes, especially to improve indexing speed for indexing long character columns (as you have). You can read more and find examples: http://msdn.microsoft.com/en-us/library/ms189788.aspx
