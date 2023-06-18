SELECT
   *
FROM
   sys.tables t
   JOIN
	sys.database_permissions dp2
		ON dp2.major_id = t.object_id AND dp2.permission_name = 'SELECT'
	WHERE
	   dp2.grantee_principal_id = USER_ID()
	   AND
	   dp2.permission_name IN ('INSERT', 'DELETE', 'UPDATE')
;
