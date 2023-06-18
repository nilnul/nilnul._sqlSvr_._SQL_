/*
I've never managed to make the integrated debugging work well with SQL Server - I usually resort to "printf" debugging, using either PRINT or RAISERROR statements. RAISERROR can do some basic argument formatting, to spit the values out to the messages window. E.g. if you have a parameter @Val1, of type int, you can do:
*/

RAISERROR('Val1 = %i',10,1,@Val1) WITH NOWAIT
/*
(the WITH NOWAIT option causes the message to appear immediately, rather than the usual SQL behaviour of buffering messages/outputs)
*/
