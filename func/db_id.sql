SELECT database_id, compatibility_level, collation_name

FROM sys.databases

WHERE database_id = DB_ID();
