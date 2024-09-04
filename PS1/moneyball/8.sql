-- SELECT "performances"."player_id", "salaries"."player_id", "salary", "hr"
-- FROM "performances" JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
-- WHERE  AND "performances"."year" = 2001
-- ORDER BY "hr" DESC
-- LIMIT 20;


SELECT "salary"
FROM "performances" JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
WHERE "hr" = 
    -- highest hr in 2001
    (select MAX("hr") from performances where year = 2001)
    -- salary in 2001
    AND "salaries"."year" = 2001
    -- performance in 2001
    AND "performances"."year" = 2001;