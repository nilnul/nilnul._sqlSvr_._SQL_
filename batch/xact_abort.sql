declare @xact_abort bit=0;
if ( 16384 & @@OPTIONS = 16384 ) set @xact_abort=1;
print @xact_abort;