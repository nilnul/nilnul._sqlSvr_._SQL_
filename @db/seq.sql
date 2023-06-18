SELECT
       TableId=c.object_id,
       ColumnName=c.name,
       KeyPriority=2 ,
       C.Is_Nullable
FROM sys.sequences AS SQ
       INNER JOIN sysdepends DP
       ON SQ.object_id=DP.depid

       INNER JOIN sys.columns AS C
       ON C.default_object_id = DP.id

WHERE OBJECTPROPERTY(C.object_id,'IsUserTable')=1
