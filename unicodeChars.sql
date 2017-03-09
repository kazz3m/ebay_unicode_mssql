USE [[database]]; -- change [[database]] to proper DB
GO

CREATE FUNCTION dbo.unicodeChars (@string AS VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
  DECLARE @result VARCHAR(MAX);
  DECLARE @char CHAR(1);
  DECLARE @unicode VARCHAR(3);
 
  SET @result = '';
  SET @unicode = '';
 
  WHILE LEN(@string) > 0
  BEGIN
    SET @char = LEFT(@string, 1);
    SET @unicode = CONVERT(VARCHAR(3), UNICODE(@char));
    IF ( @unicode <= 256 AND @unicode != 211 AND @unicode != 243)
		SET @result = @result + @char ;
	ELSE
		SET @result = @result + '&#' + @unicode + ';';
    SET @string = SUBSTRING(@string, 2, LEN(@string));
  END
  RETURN (RTRIM(@result));
END
