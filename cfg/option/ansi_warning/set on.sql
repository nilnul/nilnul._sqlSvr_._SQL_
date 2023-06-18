--We simply use the reverse logic used to test for a set option being ON. The system stored procedure sp_configure can be used to set the appropriate option by specifying the decimal representation of the appropriate bit position. 

--In case of ANSI_WARNINGS, the bitmap for decimal value 8 represents that the option is ON. 

EXEC sp_configure 'user options', 8 ;  
GO  
RECONFIGURE ;  
GO 
