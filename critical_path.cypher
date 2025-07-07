MATCH path = (start:Task)-[:DEPENDS_ON*]->(end:Task)
WHERE NOT ()-[:DEPENDS_ON]->(start)  
  AND NOT (end)-[:DEPENDS_ON]->()
WITH path,  
REDUCE(total = 0, t IN nodes(path) | total + t.duration) AS path_duration
ORDER BY path_duration DESC
LIMIT 1
RETURN [t IN nodes(path) | t.name] AS critical_path, path_duration
