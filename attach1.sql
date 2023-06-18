USE master;
GO
declare @drive nvarchar(50);
set @drive='F'

declare @path nvarchar(500)
set @path = @drive+':\wyt\360yun\work130918\sln\nilnul._db\sqlSrvDbFile'

--F:\wyt\360yun\work130918\sln\nilnul._db\sqlSrvDbFile

declare @dbDatafileName nvarchar(50)
set @dbDatafileName='nilnul'

declare @dbLogfileName nvarchar(50)
set @dbLogfileName=@dbDatafileName+'_log'

declare @dbDatafilePath nvarchar(500)
set @dbDatafilePath=@path+'\'+@dbDatafileName+'.mdf'

declare @dbLogFilePath nvarchar(500)

set @dbLogFilePath=@path+'\'+@dbLogfileName+'.ldf'

declare @dbName nvarchar(400);
set @dbName='nilnul3'


declare @sql nvarchar(500)
set @sql='
CREATE DATABASE ' +@dbName+' 
    ON (FILENAME ='''+ @dbDatafilePath+'''),
    (FILENAME = '''+ @dbLogFilePath+''')
    FOR ATTACH';

	print @sql

exec(@sql)
GO
