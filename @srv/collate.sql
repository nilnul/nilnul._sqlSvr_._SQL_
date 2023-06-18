

SELECT CONVERT (varchar, SERVERPROPERTY('collation'));

EXECUTE sp_helpsort;

SELECT name, description FROM sys.fn_helpcollations();


