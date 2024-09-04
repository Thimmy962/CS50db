SELECT 
    "year" AS "Year", ROUND(AVG("salaries"."salary"), 2) AS "Average Salary"
FROM
    salaries LEFT JOIN players ON "players"."id" = "salaries"."player_id"
GROUP BY
    "salaries"."year"
ORDER BY 
    "year" DESC;