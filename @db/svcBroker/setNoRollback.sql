ALTER DATABASE nilnul4wyt
	SET ENABLE_BROKER 
		--with rollback immediate /*The with rollback immediate clause of alter database essentially kills any active process in the database. So to answer your question of whether or not it will affect production, the answer is "very yes".*/

		/* You cannot alter a database as long as there are transactions pending. Rollback immediate will terminate all of these.*/

		/*There is an easy trick for fix the problem: use the termination options of ALTER DATABASE:        

ROLLBACK AFTER integer [ SECONDS ]         | ROLLBACK IMMEDIATE         | NO_WAIT

-ROLLBACK will close all existing sessions, rolling back any pending transaction.

– NO_WAIT will terminate the ALTER DATABASE statement with error if other connections are blocking it.
*/