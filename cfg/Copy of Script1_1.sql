﻿DECLARE @ANSI_PADDING VARCHAR(3) = 'OFF';
IF ( (16 & @@OPTIONS) = 16 ) SET @ANSI_PADDING = 'ON';
SELECT @ANSI_PADDING AS ANSI_PADDING;
