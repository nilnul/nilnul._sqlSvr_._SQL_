﻿SELECT empid, custid, qty FROM dbo.EmpCustOrders   UNPIVOT(qty FOR custid IN(A, B, C, D)) AS U;
