declare @tmp table(empid int, custid int, qty money);

select * from (
insert @tmp
	(empid, custid,qty)
	output inserted.*

	values(
		1,1,1
		
	)
	,(1,1,2)
	,(1,1,3)
	,(1,2,0)
	,
	(1,2,1)
	,(1,3,2)
	,(2,3,2)
	) d

