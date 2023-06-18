declare @tmp table(empid int, custid int, qty money);

insert @tmp
	(empid, custid,qty)
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


SELECT empid, custid, SUM(qty)
AS sumqty 
FROM @tmp 
GROUP BY   
	cube  
	(empid, custid)     
	