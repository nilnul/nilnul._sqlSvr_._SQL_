SELECT
       TableId=object_id,
       ColumnName=name,
       KeyPriority=1,
       Is_Nullable
FROM sys.columns
WHERE is_identity=1
AND OBJECTPROPERTY(object_id,'IsUserTable')=1
