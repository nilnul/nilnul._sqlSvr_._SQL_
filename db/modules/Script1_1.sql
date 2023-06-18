/* find out all the types of modules defined in the database */
SELECT DISTINCT type_desc
  FROM sys.sql_modules m
    INNER JOIN sys.objects o
    ON m.object_ID=o.object_ID