select * from sys.dm_qn_subscriptions
;

select *
	from sys.transmission_queue 
;

KILL QUERY NOTIFICATION SUBSCRIPTION 
   { ALL | subscription_id }
