sp_who

go
sp_who2
go

select 
    db_name(dbid) as [Database Name], 
    count(dbid) as [No Of Connections],
    loginame as [Login Name]
from
    sys.sysprocesses
where 
    dbid > 0
group by 
    dbid, loginame


go
SELECT DB_NAME(dbid) as DBName, 
       COUNT(dbid) as NumberOfConnections, 
       loginame as LoginName 
FROM sys.sysprocesses 
WHERE dbid > 0 
GROUP BY dbid, loginame

go
