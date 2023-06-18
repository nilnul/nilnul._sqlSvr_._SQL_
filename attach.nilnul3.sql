
declare @drive nvarchar(50);
set @drive='d'

declare @path nvarchar(500)
set @path = @drive+':\t\38\sln\nilnul_db\_store'

--F:\wyt\360yun\work130918\sln\nilnul._db\sqlSrvDbFile

declare @dbDatafileName nvarchar(50)
set @dbDatafileName='nilnul'

declare @dbLogfileName nvarchar(50)
set @dbLogfileName=@dbDatafileName+''

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
