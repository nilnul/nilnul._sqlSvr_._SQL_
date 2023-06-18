SELECT
  --  resource_associated_entity_id  can be either HOBT (BIGINT) or OBJECT_ID (INT)
  --  use % 2147483647 to prevent arithmetic overflow error when passing the value
  --  to the object_name function.
    OBJECT_NAME(resource_associated_entity_id % 2147483647)
   ,*
FROM    sys.dm_tran_locks   TL
WHERE   TL.REQUEST_SESSION_ID = @@SPID
AND     TL.resource_type    =   'OBJECT'