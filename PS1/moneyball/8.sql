SELECT "salary"
FROM "performances" JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
WHERE "HR" = 
    -- highest hr in 2001
    (select MAX("HR") from performances where year = 2001)
    -- salary in 2001
    AND "salaries"."year" = 2001
    -- performance in 2001
    AND "performances"."year" = 2001;