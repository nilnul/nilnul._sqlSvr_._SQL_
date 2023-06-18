with 
	cteTens(n)
	as
		( 
			select n
				from 
					(
						values (1), (2), (3), (4), (5), (6), (7), (8), (9), (0)
					) a(n)
		)
	,
	cteHundreds (n)
		as
			(
				select a.n from cteTens a, cteTens b
		)
			
	, 
	cteTally (n)
		as
			(
				select n = row_number() over (
							order by (select null)
						)
				 from cteHundreds a, cteHundreds b
			)
select n
		 from cteTally