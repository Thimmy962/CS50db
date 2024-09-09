WITH "hank" AS (
    SELECT "id", "first_name", "last_name" FROM "players"
    WHERE "first_name" = 'Len' AND "last_name" = 'Barker'
)

SELECT "first_name", "last_name", "salary", "name"
from salaries JOIN players ON "players"."id" = "salaries"."player_id" JOIn "teams" ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."player_id" = (SELECT "id" FROM "hank");