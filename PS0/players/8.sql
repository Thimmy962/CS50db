SELECT ROUND(AVG("weight"), 2) AS 'Average Weight', ROUND(AVG("height"), 2) AS "Average Height"
FROM "players"
WHERE "debut" > '1999-12-31';