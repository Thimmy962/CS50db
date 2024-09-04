-- SELECT "first_name" AS "First Name", "last_name" AS "Last Name", "salary"
-- FROM players JOIN salaries ON "players"."id" = "salaries"."player_id"
-- ORDER BY "salary" DESC
-- LIMIT 1;

SELECT "first_name" AS "First Name", "last_name" AS "Last Name"
FROM players JOIN salaries ON "players"."id" = "salaries"."player_id"
WHERE "salary" = (SELECT MAX(salary) FROM salaries);