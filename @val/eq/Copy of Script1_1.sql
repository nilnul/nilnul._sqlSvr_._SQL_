DECLARE @ANSI_PADDING VARCHAR(3) = 'OFF';
IF ( (16 & @@OPTIONS) = 16 ) SET @ANSI_PADDING = 'ON';
SELECT @ANSI_PADDING AS ANSI_PADDING;



CREATE TABLE #tmp (c1 varchar(10))
GO

INSERT INTO #tmp VALUES ('abc ')
INSERT INTO #tmp VALUES ('abc')
GO

SELECT DATALENGTH(c1) as 'EqualWithSpace', * FROM #tmp WHERE c1 = 'abc '
SELECT DATALENGTH(c1) as 'EqualNoSpace  ', * FROM #tmp WHERE c1 = 'abc'
SELECT DATALENGTH(c1) as 'GTWithSpace   ', * FROM #tmp WHERE c1 > 'ab '
SELECT DATALENGTH(c1) as 'GTNoSpace     ', * FROM #tmp WHERE c1 > 'ab'
SELECT DATALENGTH(c1) as 'LTWithSpace   ', * FROM #tmp WHERE c1 < 'abd '
SELECT DATALENGTH(c1) as 'LTNoSpace     ', * FROM #tmp WHERE c1 < 'abd'
SELECT DATALENGTH(c1) as 'LikeWithSpace ', * FROM #tmp WHERE c1 LIKE 'abc %'
SELECT DATALENGTH(c1) as 'LikeNoSpace   ', * FROM #tmp WHERE c1 LIKE 'abc%'
GO
DROP TABLE #tmp
