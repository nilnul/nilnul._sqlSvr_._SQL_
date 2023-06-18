USE tempdb;
GO

declare @path nvarchar(500)
set @path = 'D:\wyt\360yun\work130918\sln\wyt(db\_store'

declare @dbDatafileName nvarchar(50)
set @dbDatafileName='wyt'

declare @dbLogfileName nvarchar(50)
set @dbLogfileName=@dbDatafileName+''

declare @dbDatafilePath nvarchar(500)
set @dbDatafilePath=@path+'\'+@dbDatafileName+'.mdf'

declare @dbLogFilePath nvarchar(500)

set @dbLogFilePath=@path+'\'+@dbLogfileName+'.ldf'


declare @sql nvarchar(500)
set @sql='
CREATE DATABASE wyt 
    ON (FILENAME ='''+ @dbDatafilePath+'''),
    (FILENAME = '''+ @dbLogFilePath+''')
    FOR ATTACH';

	print @sql

exec(@sql)
GO
