/*In your earlier tip (Die Sucker - Killing SQL Server Process Ids (spids)) you outlined an option to kill spids (system process ids) to perform database restores or database maintenance when exclusive use of the database is needed.  Do any other options exist?  What are the advantages and disadvantages to these approaches?  When should one approach be used over another?

Solution
The typical approach to gaining exclusive use of a database is to use the ALTER DATABASE command.  This command has a few different parameters that can be helpful without writing any custom code to gain exclusive or restricted access to a database.  Check out the options and examples below in addition to some high level option analysis.

ALTER DATABASE Options
•SET - Determines the type of user access to the database ◦SINGLE_USER - Single user connection to the database 
◦RESTRICTED_USER - Any number of users with db_owner or dbcreator or logins with sysadmin rights can connect to the database 
◦MULTI_USER - Any number of users with rights to the database can connect to the database

•WITH ROLLBACK - Determines how the exclusive access to the database will take place ◦ROLLBACK AFTER integer [SECONDS] - Rollback the spids after a particular number of seconds 
◦ROLLBACK IMMEDIATE - Rollback the spids immediately 
◦NO_WAIT - If all of the spids do not commit or rollback immediately the request to put the database in an exclusive state will fail 


ALTER DATABASE Example


Option 1 (Restricted Access) - Restrict the database to users with db_owner, dbcreater or sysadmin rights and rollback the spids immediately 
*/
ALTER DATABASE DatabaseName 
SET RESTRICTED_USER 
WITH ROLLBACK IMMEDIATE
  
--Option 2 (Exclusive Access) - Restrict the database to a single user and rollback the spids immediately  
ALTER DATABASE DatabaseName 
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE
  
--Option 3 (Multi User Access) - Unrestricted database access 
ALTER DATABASE DatabaseName
SET MULTI_USER 
  

