IF DATABASE_PRINCIPAL_ID() = 1

   PRINT 'The trigger will fire.';

ELSE

   PRINT 'The trigger will not file.';
