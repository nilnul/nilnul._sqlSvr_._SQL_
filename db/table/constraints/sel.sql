select c.name as c_name, t.name as t_name
from sys.key_constraints c
join sys.tables t on t.object_id = c.parent_object_id