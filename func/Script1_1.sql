SELECT DB_NAME(),
	APP_NAME()-- returns the application name for the current session:Keep in mind, however, that the client provides the application name and it is not verified. You should avoid implementing this function as part of your security strategy.
	;
go


SELECT name ColumnName,

   TYPE_NAME(system_type_id) SystemType,

   TYPE_NAME(user_type_id) UserType

FROM sys.columns

WHERE object_id = OBJECT_ID(N'Person.Person');

go

SELECT OBJECT_SCHEMA_NAME(OBJECT_ID(N'AdventureWorksDW2014.dbo.DimEmployee'));
go

SELECT name PrimaryKey, object_id ObjectID

FROM sys.objects

WHERE SCHEMA_NAME(schema_id) = 'dbo' AND type = 'PK'; 
go

SELECT OBJECT_NAME(object_id) TableName

FROM sys.columns

WHERE user_type_id = TYPE_ID(N'name') AND is_nullable = 1

GROUP BY object_id

ORDER BY TableName;

go


SELECT FILEGROUP_ID('MemOptFilegroup')
