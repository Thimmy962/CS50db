SELECT
    "first_name", "last_name", "salary" / "h" AS "dollars per hit" 
FROM 
    "players" 
    JOIN 
    "salaries" ON Players.id = salaries.player_id 
    JOIN
    "performances" ON performances.player_id = players.id 
    AND 
    performances.year = salaries.year
WHERE performances.year = 2001 AND performances.h != 0
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;