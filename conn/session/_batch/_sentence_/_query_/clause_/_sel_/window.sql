﻿SELECT empid, ordermonth, val,   SUM(val) OVER(PARTITION BY empid                 ORDER BY ordermonth                 ROWS BETWEEN UNBOUNDED PRECEDING                          AND CURRENT ROW) AS runval FROM Sales.EmpOrders;