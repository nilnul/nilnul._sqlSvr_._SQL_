SELECT index_id, index_column_id, 

   INDEX_COL('Person.Person', index_id, index_column_id) IndexCol

FROM sys.index_columns

WHERE object_id = OBJECT_ID('Person.Person')

   AND INDEX_COL('Person.Person', index_id, index_column_id) IS NOT NULL--The INDEX_COL function returns NULL for XML indexes, and I did not want to include them.) 
   
   ;
