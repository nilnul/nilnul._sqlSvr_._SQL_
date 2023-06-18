--for tables.
SELECT
   *
	FROM
	   sys.tables t
		   LEFT JOIN
		   sys.database_permissions dp2 
			ON dp2.major_id = t.object_id AND dp2.permission_name = 'SELECT'
	WHERE
	   NOT EXISTS (
		   SELECT * FROM 
				 sys.database_permissions dp
			  WHERE
				 dp.major_id = t.object_id
				 AND
				 dp.permission_name IN ('INSERT', 'DELETE', 'UPDATE')
		)
