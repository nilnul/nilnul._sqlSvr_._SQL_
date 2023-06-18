SELECT name, schema_id

FROM sys.schemas

WHERE principal_id = DATABASE_PRINCIPAL_ID(N'dbo');
