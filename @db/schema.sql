;WITH cte(SchemaName)
AS
(
SELECT OBJECT_SCHEMA_NAME(T.object_id)
FROM sys.objects AS T
WHERE T.type='U'
)

SELECT
       COALESCE(SchemaName, ' TOTAL NUMBER OF TABLES') AS SchemaName,
       COUNT(*) AS TablesInSchema,
       GROUPING(SchemaName) AS IsTotal
FROM cte
GROUP BY SchemaName
WITH ROLLUP
ORDER BY SchemaName