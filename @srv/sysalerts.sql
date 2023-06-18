select top 1000 
	*
	from [msdb].[dbo].[sysalerts]

	/*


	I found that no alerts had been added to any servers in a company I started work at, as there were many servers, I decided to set up one server with all the alerts I thought they should have and script the results to apply elsewhere. This script excludes any replication alerts so the resulting script can be used to add alerts on other servers. 

You could always go a step further and run this in an SSIS package to apply across a whole environment. 

Here's the result when I ran it:- 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Error Number 824'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Error Number 824'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Error Number 824', @message_id = 824 , @severity = 0 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Error Number 825: Miscellaneous System Information'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Error Number 825: Miscellaneous System Information'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Error Number 825: Miscellaneous System Information', @message_id = 825 , @severity = 0 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 016: Miscellaneous User Error'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 016: Miscellaneous User Error'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 016: Miscellaneous User Error', @message_id = 0 , @severity = 16 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 017: Insufficient Resources'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 017: Insufficient Resources'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 017: Insufficient Resources', @message_id = 0 , @severity = 17 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 018: NonFatal Internal Error'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 018: NonFatal Internal Error'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 018: NonFatal Internal Error', @message_id = 0 , @severity = 18 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 019: Fatal Error in Resource'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 019: Fatal Error in Resource'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 019: Fatal Error in Resource', @message_id = 0 , @severity = 19 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 020: Fatal Error in current Proccess'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 020: Fatal Error in current Proccess'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 020: Fatal Error in current Proccess', @message_id = 0 , @severity = 20 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 021: Fatal Error in Database Processes'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 021: Fatal Error in Database Processes'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 021: Fatal Error in Database Processes', @message_id = 0 , @severity = 21 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 022: Fatal Error: Table Integrity Suspect'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 022: Fatal Error: Table Integrity Suspect'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 022: Fatal Error: Table Integrity Suspect', @message_id = 0 , @severity = 22 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 023: Fatal Error Database Integrity Suspect'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 023: Fatal Error Database Integrity Suspect'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 023: Fatal Error Database Integrity Suspect', @message_id = 0 , @severity = 23 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 024: Fatal Error Hardware Error'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 024: Fatal Error Hardware Error'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 024: Fatal Error Hardware Error', @message_id = 0 , @severity = 24 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 

IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'Severity 025: Fatal Error'))
  ---- Delete the alert with the same name.
   EXECUTE msdb.dbo.sp_delete_alert @name = N'Severity 025: Fatal Error'
 BEGIN
 EXECUTE msdb.dbo.sp_add_alert @name = N'Severity 025: Fatal Error', @message_id = 0 , @severity = 25 , @enabled = 1, @delay_between_responses = 60 , @include_event_description_in = 1, @category_name = N'[Uncategorized]'
 END 



 --Run on source server
USE MSDB
GO

SELECT 'IF (EXISTS (SELECT name FROM msdb.dbo.sysalerts WHERE name = N'''+NAME+'''))
 ---- Delete the alert with the same name.
  EXECUTE msdb.dbo.sp_delete_alert @name = N'''+name+''' 
BEGIN 
EXECUTE msdb.dbo.sp_add_alert @name = N'''+name+''', @message_id = '+CAST(message_id AS VARCHAR(10))+' , @severity = '+CAST(severity AS VARCHAR(10))+' , @enabled = 1, @delay_between_responses = '+CAST(delay_between_responses AS VARCHAR(10))+' , @include_event_description_in = '+CAST(include_event_description AS VARCHAR(10))+', @category_name = N''[Uncategorized]''
END
' FROM [msdb].[dbo].[sysalerts]
WHERE category_id <> 20


--Add email notifications amend DBA to your operator
SELECT 'EXEC msdb.dbo.sp_add_notification @alert_name=N'''+NAME+''', @operator_name=N''DBA'', @notification_method = 7;'
FROM [msdb].[dbo].[sysalerts]
WHERE category_id <> 20

--Run results on destination server


*/