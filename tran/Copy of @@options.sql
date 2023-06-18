select [Current LSN], [Operation], 
	[AllocUnitName], [Page ID], [Slot ID], 
	[Lock Information],
	[Num Elements], [RowLog Contents 0], [RowLog Contents 1], [RowLog Contents 2]
from fn_dblog(null, null)
--where [Transaction ID]='0000:000002d6'