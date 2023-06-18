CREATE PROCEDURE dbo.ZanziBar1
   @KungFoo varchar(1)
AS
SET NOCOUNT ON
SELECT @KungFoo
GO

EXEC dbo.ZanziBar '₠'

EXEC dbo.ZanziBar N'₠'
