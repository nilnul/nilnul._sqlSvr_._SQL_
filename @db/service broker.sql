ALTER DATABASE nilnul4wyt
	SET ENABLE_BROKER 
		with rollback immediate /*The with rollback immediate clause of alter database essentially kills any active process in the database. So to answer your question of whether or not it will affect production, the answer is "very yes".*/

		/* You cannot alter a database as long as there are transactions pending. Rollback immediate will terminate all of these.*/


		/*





		If your connection hangs while attempting to start sql server broker service, its likely caused by the system trying to gain exclusive access to your database.   Some people recommend stopping and restarting the sql server instance.  I find that a little heavy-handed, like swatting a fly with a sledge hammer.  Instead switch the database into single user mode, enable the broker service, and restore the database to multi-user mode. 

 

1) Set the database to single user mode:

ALTER DATABASE [DBNAME] SET SINGLE_USER WITH ROLLBACK IMMEDIATE

 

2) Enable Broker Service on the database 

ALTER DATABASE [DBNAME] SET ENABLE_BROKER;

 

3)Restore the database to multi-user mode

ALTER DATABASE [DBNAME] SET MULTI_USER

Of course you’ll need proper permissions, but enabling the service this way prevents interruption to any other databases running on your server.

 

Also make sure Broker Service is enabled:
SELECT is_broker_enabled FROM sys.databases WHERE name = ‘DBNAME’;It should return 1 if its enabled.

-- Enable Service Broker:
ALTER DATABASE [DBNAME] SET ENABLE_BROKER;

-- Disable Service Broker:
ALTER DATABASE [DBNAME] SET DISABLE_BROKER;

 

 

More useful SSBS Queries

 

If your activation stored procured isn’t firing, it might be because the queue is disabled.  Check the status of the queues with:

select [name], is_receive_enabled from sys.service_queues; – 0 indicates the queue is disabled. 

 

To enable the queue:

alter queue QUEUENAME with status=on; – replace QUEUENAME with the name of your queue

 

Here’s a link to a great site with lots of useful broker service queries

http://myadventuresincoding.wordpress.com/2007/11/22/sql-server-service-broker-tips-and-tricks/


*/