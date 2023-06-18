--Since their introduction in SQL Server 2005, the number of available DMVs/DMFs has more than doubled. How can you see what’s available to you on a given SQL Server? One quick & easy way is to query sys.system_objects:


SELECT
system_objects.name,
 system_objects.type_desc
 FROM sys.system_objects
 WHERE system_objects.schema_id = 4
 AND system_objects.type IN ('IF', 'V')
 AND system_objects.name LIKE 'dm_%'
ORDER BY
 system_objects.type_desc,
system_objects.name;


--Of these, what are some of my favorites?
--◾sys.dm_db_index_physical_stats
--◾sys.dm_db_index_usage_stats

/*


Combining these two, gives me very useful insight into both the structure of a table & any indexes it may have, but to how my workload is actively making use of each of these structures. Data found here is extremely useful when it comes to performance tuning.
◾sys.dm_db_partition_stats

I like to use this DMV to get row count & page count information about a database. Its output gives me greater insight into the contents of a table, particularly without the overhead of a SELECT(1) for a quick row count or sp_spaceused execution. Personally I find knowing size by page count to be far more valuable anyway.
◾sys.dm_db_exec_connections
◾sys.dm_db_exec_requests
◾sys.dm_db_exec_sessions

Mixing & matching these three, you can obtain information regarding current connections and activity on your SQL Server.


I can’t tell you how many times I’ve had a “eureka” moment, discovering that a DMV/DMF exposed another interesting piece of information that I wasn’t aware of before. To say that there’s a wealth of information is an understatement. So whether you’re new or not to DMVs/DMFs, take another look – you too may find a new and useful gem hidden inside them!

And if you want to read all about all available DMVs/DMFs, be sure to check out Books Online: Dynamic Management Views and Functions (Transact-SQL)
*/