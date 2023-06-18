select @@OPTIONS;

IF (@@OPTIONS & 8) > 0
BEGIN
    PRINT 'SET ANSI_WARNINGS is ON.';
END
