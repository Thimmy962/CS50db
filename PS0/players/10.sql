SELECT "first_name" AS "FIrst Name", "last_name" AS "Last Name", "height" AS "Height"
FROM "players"
WHERE "height" > 65
ORDER BY "height", "first_name", "last_name";