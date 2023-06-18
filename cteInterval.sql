with cte(id) as
	(
		select 1
		union all
		select id+1
			from cte
			where id<100
	)
select id
	from cte;
