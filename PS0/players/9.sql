SELECT "first_name", "last_name"
FROM "players"
WHERE EXTRACT(YEAR FROM final_game) = 2022
ORDER BY "first_name" ASC, "last_name" ASC;
