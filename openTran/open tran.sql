sp_who
go

SELECT * 
 FROM sys.dm_tran_session_transactions 
 go

 SELECT * FROM sysprocesses WHERE open_tran = 1
 go
 DBCC OPENTRAN

 go
 select *
 FROM sys.dm_tran_active_transactions 
 go

 select *
	from sys.dm_tran_database_transactions 