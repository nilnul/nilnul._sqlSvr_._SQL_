select [Current LSN], [Operation], [Transaction ID], [Parent Transaction ID],
	[Begin Time], [Transaction Name], [Transaction SID]
from fn_dblog(null, null)
where [Operation] = 'LOP_BEGIN_XACT'