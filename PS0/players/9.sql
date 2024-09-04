-- SELECT "id", "final_game" FROM "players"
-- WHERE strftime('%Y', final_game) = '2022'
-- ORDER BY "first_name", "last_name";


SELECT "first_name", "last_name"
FROM "players"
WHERE strftime('%Y', final_game) = '2022'
ORDER BY "first_name" ASC, "last_name" ASC;
