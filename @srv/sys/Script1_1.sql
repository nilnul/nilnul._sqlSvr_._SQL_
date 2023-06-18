declare @object_name nvarchar(400) = 'a'
select top 1000 *
	from sys.dm_exec_describe_first_result_set_for_object(OBJECT_ID(@object_name), 0) 