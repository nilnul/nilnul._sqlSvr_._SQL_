--WARNING:  If the table has a unique index but not a unique constraint then a foreign key relationship cannot be created. 

--The query to find tables without the required constraints is shown below. 
;WITH PK AS (
       SELECT parent_object_id
       FROM sys.objects
       WHERE type IN('PK','UQ')
)
SELECT
       OBJECT_SCHEMA_NAME(T.object_id)
+      '.'
+      OBJECT_NAME(T.object_id) AS FQ_TableName
FROM sys.objects AS T
       LEFT JOIN PK
       ON PK.parent_object_id = T.object_id
WHERE
       T.type='U'
AND    PK.parent_object_id IS NULL
