SELECT
    "first_name", "last_name", "salary", "hr", "performances"."year"
FROM 
    "players" 
    JOIN 
    "salaries" ON Players.id = salaries.player_id 
    JOIN
    -- the new table formed above should be joined to the performances table based on 2 criteria
    -- 1) player_id on performances table correspond to id on the players table i.e this performance is for this id
    -- 2) the year of performance and year of slary should also be the same
    "performances" ON performances.player_id = players.id 
    AND 
    performances.year = salaries.year
ORDER BY
    "players"."id" ASC,
    "performances"."year" DESC,
    "performances"."hr" DESC,
    "salaries"."salary" DESC;