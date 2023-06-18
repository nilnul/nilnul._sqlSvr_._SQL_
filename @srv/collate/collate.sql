

SELECT name, description FROM sys.fn_helpcollations()
	where name like stuff('%%',2,0, 'chin')


