DECLARE @Txt1 VARCHAR(MAX)
SET @Txt1=''
 
SELECT  @Txt1 = @Txt1 + Txt +','
FROM    ConcatenationDemo
SELECT  LEFT(@Txt1,LEN(@Txt1)-1) AS Txt