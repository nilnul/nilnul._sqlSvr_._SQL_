;WITH FKTables (FQTableName) AS (
       SELECT        OBJECT_SCHEMA_NAME(fkeyid)+'.'+OBJECT_NAME(fkeyid)
       FROM sys.sysreferences
              UNION
       SELECT
              OBJECT_SCHEMA_NAME(rkeyid)+'.'+OBJECT_NAME(rkeyid)
       FROM sys.sysreferences
),
UserTables (FQTableName) AS (
       SELECT        OBJECT_SCHEMA_NAME(object_id)+'.'+OBJECT_NAME(object_id)
       FROM sys.objects
       WHERE type='U'
)
SELECT COUNT(U.FQTableName) AS TotalUserTables,
       COUNT(F.FQTableName) AS TablesInARelationship  
FROM UserTables AS U
       LEFT JOIN     FKTables AS F
       ON U.FQTableName=F.FQTableName