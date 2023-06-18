declare @tableName sysname
;

SELECT * 
FROM sys.foreign_keys
WHERE referenced_object_id = object_id(@tableName)
;

/*
 when you have determined what constraints are on the tables you can remove them with something like this
*/

SELECT 
    'ALTER TABLE ' +  OBJECT_SCHEMA_NAME(parent_object_id) +
    '.' + OBJECT_NAME(parent_object_id) + 
    ' DROP CONSTRAINT ' + name
FROM sys.foreign_keys
WHERE referenced_object_id = object_id(@tableName)