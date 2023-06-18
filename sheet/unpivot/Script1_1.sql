/*TABLE: PRODUCT

ProductId | ABR | UBR
1 | 1 | 1
2 | 1 | 0
3 | 0 | 1
4 | 1 | 1
5 | 1 | 1
I want a SELECT statement that will generate 8 results from this set. Basically one result for each instance of either ABR or UBR = 1.

So I would like my result to be:

ProductId | Edition
1 | ABR
1 | UBR
2 | ABR
3 | UBR
4 | ABR
4 | UBR
5 | ABR
5 | UBR
I know I can achieve this using a UNION but I was looking for something more elegant.
*/
/*I'd use UNPIVOT for this unless abr and ubr are both indexed and a relatively low proportion contain the value 1.

(Borrowing JNK's table variable)
*/

SELECT id,
       Edition
FROM @prod
UNPIVOT (V FOR Edition IN (abr,ubr)) AS Unpvt
WHERE V = 1
