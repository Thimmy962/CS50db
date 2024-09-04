SELECT "Players with high performance and low RBI" AS heading;

SELECT "first_name", "last_name"
FROM
    (SELECT
        "players"."first_name", "players"."last_name"
    FROM 
        "players"
        JOIN "salaries" ON "players"."id" = "salaries"."player_id"
        JOIN "performances" ON "performances"."player_id" = "players"."id" 
        AND "performances"."year" = "salaries"."year"
    WHERE 
        "performances"."year" = 2001 
        AND "performances"."h" != 0
    ORDER BY 
        "salaries"."salary" / "performances"."h" ASC
    LIMIT 10
    )
INTERSECT
SELECT "first_name", "last_name"
FROM
    (SELECT
        "players"."first_name", "players"."last_name" 
    FROM 
        "players"
        JOIN "salaries" ON "players"."id" = "salaries"."player_id"
        JOIN "performances" ON "performances"."player_id" = "players"."id" 
        AND "performances"."year" = "salaries"."year"
    WHERE 
        "performances"."year" = 2001 
        AND "performances"."rbi" != 0
    ORDER BY 
        "salaries"."salary" / "performances"."rbi" ASC
    LIMIT 10)
ORDER BY "last_name", "first_name";