SELECT "first_name" AS "First Name", "last_name" AS "Last Name", "height" AS "Height"
FROM "players"
WHERE "height" > (
    SELECT AVG("height") FROM "players"
)
ORDER BY "height" DESC, "first_name", "last_name";