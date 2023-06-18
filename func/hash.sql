DECLARE @HashThis varchar(4000);
SELECT @HashThis = CONVERT(varchar(4000),'aaaa');
SELECT HashBytes('md5', @HashThis);
