declare @sql nvarchar(max);
set @sql=N'asb'

select @sql as [processing-instruction(k)] FOR XML PATH 
