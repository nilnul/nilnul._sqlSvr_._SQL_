dbcc inputbuffer(58);

SELECT open_tran FROM master.sys.sysprocesses WHERE SPID=58

select @@TRANCOUNT 