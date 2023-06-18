SELECT OBJECT_SCHEMA_NAME(object_id) AS SchemaName,
       OBJECT_NAME(object_id) AS TableName,
       SUM(rows) AS RowCountEstimate

FROM sys.partitions

WHERE index_id in(0,1)
AND OBJECTPROPERTY(object_id,'IsUserTable')=1

GROUP BY object_id

ORDER BY 3 DESC