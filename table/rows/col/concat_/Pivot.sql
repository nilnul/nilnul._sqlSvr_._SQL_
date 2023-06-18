--Solution 2 : Using PIVOT
--The first instinct when confronted with a problem which involves converting rows to columns may be to use PIVOT, and indeed the following code uses the PIVOT operator. It returns the same result as that above :
SELECT [1]+','+[2]+','+[3]+','+[4]+','+[5]+','+[6]+','+[7]+','+[8] AS Txt
FROM  (SELECT 'Total' AS AC,[1],[2],[3],[4],[5],[6],[7],[8]
       FROM    
          (SELECT RowID,Txt FROM ConcatenationDemo) AS B
       PIVOT (MAX(Txt) FOR RowID IN ([1],[2],[3],[4],[5],[6],[7],[8])
             ) AS A
      ) AS C
--I’ve used the PIVOT command to convert the rows to an equivalent number of columns and then concatenated the result together. Normally we would have some type of aggregation as the rows are pivoted to columns, hence the use of the MAX() here. Note that in the this example no aggregation is necessary so this could equally well be a MIN(). One thing that you may have noticed is that the code is specific for the number of rows in the table – the code would have to be modified if there was an extra row. This is a significant limitation of this approach.