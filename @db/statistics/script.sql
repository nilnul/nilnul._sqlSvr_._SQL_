SELECT name, stats_id, STATS_DATE(object_id, stats_id) StatsDate
 FROM sys.stats 
WHERE object_id = OBJECT_ID('Person.Person');