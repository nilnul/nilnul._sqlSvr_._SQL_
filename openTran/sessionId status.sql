--You should first figure out what it was doing, where it came from, and if applicable how much longer it might be expected to run:


declare @session_id bigint;
set @session_id=54;

SELECT 
   r.[session_id],
   c.[client_net_address],
   s.[host_name],
   c.[connect_time],
   [request_start_time] = s.[last_request_start_time],
   [current_time] = CURRENT_TIMESTAMP,
   r.[percent_complete],
   [estimated_finish_time] = DATEADD
       (
           MILLISECOND,
           r.[estimated_completion_time], 
           CURRENT_TIMESTAMP
       ),
   current_command = SUBSTRING
       (
           t.[text],
           r.[statement_start_offset]/2,
           COALESCE(NULLIF(r.[statement_end_offset], -1)/2, 2147483647)
       ),
   module = COALESCE(QUOTENAME(OBJECT_SCHEMA_NAME(t.[objectid], t.[dbid])) 
       + '.' + QUOTENAME(OBJECT_NAME(t.[objectid], t.[dbid])), '<ad hoc>'),
   [status] = UPPER(s.[status])
 FROM
     sys.dm_exec_connections AS c
 INNER JOIN
     sys.dm_exec_sessions AS s
     ON c.session_id = s.session_id
 LEFT OUTER JOIN
     sys.dm_exec_requests AS r
     ON r.[session_id] = s.[session_id]
 OUTER APPLY
     sys.dm_exec_sql_text(r.[sql_handle]) AS t
 WHERE
     c.session_id = @session_id;


--	 If you are confident that you can sever this connection you can use:
--KILL 54;


--Just be aware that depending on what the session was doing it could leave data and/or the app that called it in a weird state.

