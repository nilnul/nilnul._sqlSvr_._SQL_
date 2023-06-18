select top 100 
	 tt.name, c.name 
	 from sys.table_types tt
		inner join sys.columns c on c.object_id = tt.type_table_object_id
	order by c.column_id
