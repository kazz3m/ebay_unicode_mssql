# ebay_unicode_mssql
string function - convert unicode chars to their decimal representation

SQL:
```
SELECT dbo.unicodeChars('C:Wyściółka /  C:Materiał zewnętrzny ----- ż ź ć ś ą');
```
Result:
```
'C:Wy&#347;ci&#243;&#322;ka /  C:Materia&#322; zewn&#281;trzny ----- &#380; &#378; &#263; &#347; &#261;'
```
