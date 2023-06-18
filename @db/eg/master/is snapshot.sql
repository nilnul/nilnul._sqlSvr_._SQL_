/*In SQL Server 2014, I am trying to determine if a database is a snapshot programmatically. What should I do? 




Answer: Query the source_database_id field in sys.databases
Explanation: 
The best way to determine if a database is a snapshot is to look in sys.databases in the master database. If the source_database_id field is populated, this database is a snapshot. If it is NULL, this is a normal database. 
*/

select top 1000 source_database_id,*
	from sys.databases
