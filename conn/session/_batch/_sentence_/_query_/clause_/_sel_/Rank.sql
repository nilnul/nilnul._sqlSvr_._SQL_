﻿SELECT orderid, custid, val,   ROW_NUMBER() OVER(ORDER BY val) AS rownum,   RANK()       OVER(ORDER BY val) AS rank,   DENSE_RANK() OVER(ORDER BY val) AS dense_rank,   NTILE(100)   OVER(ORDER BY val) AS ntile FROM Sales.OrderValues ORDER BY val;
