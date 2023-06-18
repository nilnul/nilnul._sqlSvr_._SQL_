DBCC INPUTBUFFER(@@spid)


DECLARE @sqltext VARBINARY(128)
SELECT @sqltext = sql_handle
FROM sys.sysprocesses
WHERE spid = (53)
SELECT TEXT
 FROM sys.dm_exec_sql_text(@sqltext)
GO

SELECT TEXT
 FROM sys.dm_exec_connections
CROSS APPLY sys.dm_exec_sql_text(most_recent_sql_handle)
WHERE session_id = (53)
GO


DECLARE @sqltext VARBINARY(128)
SELECT @sqltext = sql_handle
FROM sys.sysprocesses
WHERE spid = 61
SELECT TEXT
 FROM ::fn_get_sql(@sqltext)