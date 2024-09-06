SELECT "first_name" AS "First Name", "last_name" AS "Last Nmae", "debut" AS "Debut" FROM "players"
WHERE "birth_city" = 'Pittsburgh' AND "birth_state" = 'PA'
ORDER BY "debut" DESC, "first_name", "last_name";